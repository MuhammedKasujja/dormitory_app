import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:dormitory_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../blocs/blocs.dart';
import '../widgets/widgets.dart';

class RedeemVoucherPage extends StatelessWidget {
  const RedeemVoucherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VouchersBloc, VouchersState>(
      buildWhen: (previous, current) =>
          previous.activeVoucher?.code != current.activeVoucher?.code,
      builder: (context, state) {
        if (state.activeVoucher != null) {
          final voucher = state.activeVoucher!;
          return Scaffold(
            appBar: AppBar(
              title: Text(voucher.type),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.r, 24.r, 16.r, 16.r),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: SizedBox(
                        width: 120.w,
                        height: 120.w,
                        child: ImageLoader(
                          imageUrl: voucher.photoUrl,
                          placeholderImage: Assets.voucher,
                        ),
                      ),
                    ),
                    Spacing.xs(),
                    Text(voucher.subject).title(lineHeight: 1.57),
                    Spacing.small(),
                    Text(
                      '${voucher.discount}%',
                      style: TextStyle(
                        fontSize: 28.sp,
                        height: 1.214,
                        letterSpacing: -0.56.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.text400,
                      ),
                    ),
                    Spacing.xs(),
                    Text(voucher.formatedDate),
                    Spacing.medium(),
                    const Divider(),
                    Spacing.medium(),
                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(
                                color: AppColors.divider,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12.r),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    voucher.type,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      height: 1.5,
                                      color: const Color(0xFF428BC1),
                                    ),
                                  ),
                                  const Spacing(4),
                                  Text(
                                    'CODE: ${voucher.code}',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      height: 1.5,
                                      color: AppColors.text200,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 24.w),
                        Flexible(
                          child: Column(
                            children: [
                              VoucherValidity(
                                startTime: voucher.startTime,
                                endTime: voucher.endTime,
                              ),
                              const Spacing(12),
                              VoucherStatusWidget(
                                status: voucher.status,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Spacing.medium(),
                    const Divider(),
                    Spacing.medium(),
                    VoucherTermsAndConditions(
                      teramAndConditions: voucher.termsAndConditions,
                    ),
                    Spacing.small(),
                    BlocConsumer<RedeemVoucherCubit, RedeemVoucherState>(
                      listener: (context, state) {
                        if (state.status.isFailure) {
                          Utility.showAlert(state.errorMessage);
                        }
                        if (state.status.isSuccess) {
                          context
                              .read<VouchersBloc>()
                              .add(AddVourcher(vourcher: state.vourcher!));
                          Navigator.popAndPushNamed(context, Routes.vourchers);
                        }
                      },
                      builder: (context, state) {
                        return CustomButton(
                          loading: state.status.isInProgress,
                          label: 'Redeem',
                          onPressed: () => context
                              .read<RedeemVoucherCubit>()
                              .redeemVoucher(voucher.code),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: state.status.isFailure
                ? Text(state.errorMessage ?? 'An error occured')
                : const CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}

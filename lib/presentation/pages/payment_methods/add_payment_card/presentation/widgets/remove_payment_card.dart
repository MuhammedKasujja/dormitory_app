import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../cubit/add_payment_card_cubit.dart';

class RemovePaymentCardDialog extends StatelessWidget {
  const RemovePaymentCardDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final bodyStyle = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      height: 1.25,
      letterSpacing: -0.16.sp,
      color: const Color(0xFF333333),
    );
    return BlocProvider(
      create: (context) => AddPaymentCardCubit(),
      child: Padding(
        padding: EdgeInsets.only(top: 5.r, bottom: 16.r),
        child: Wrap(
          children: [
            Center(
              child: Container(
                height: 5.h,
                width: 36.w,
                decoration: BoxDecoration(
                  color: AppColors.divider,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.r, 19.r, 16.r, 16.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Remove Card',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.text1,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1, height: 1),
            const SizedBox().small(),
            Center(child: SvgPicture.string(Assets.errorBigIcon)),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.r),
                child: Column(
                  children: [
                    Text(
                      'Are you sure you want to ',
                      style: bodyStyle,
                    ),
                    Text(
                      'remove this payment method?',
                      style: bodyStyle,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.r, 24.r, 16.r, 0),
              child: Row(
                children: [
                  Flexible(
                    child: SecondaryButton(
                      label: 'Cancel',
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Flexible(
                    child: CustomButton(
                      onPressed: () {
                        Navigator.pop(context);
                        showDialog(
                          useRootNavigator: true,
                          context: context,
                          builder: (ctx) => AppAlertDialog(
                            btnText: 'Close',
                            icon: SvgPicture.string(
                              Assets.accountVerifiedIcon,
                            ),
                            title: 'Card Removed Sucessfully',
                          ),
                        );
                      },
                      label: 'Remove',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

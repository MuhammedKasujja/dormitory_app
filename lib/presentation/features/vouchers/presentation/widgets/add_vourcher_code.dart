import 'package:dormitory_app/di_container.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:dormitory_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../data/repositories/repositories.dart';
import '../blocs/blocs.dart';

class AddVourcherCodeModal extends StatelessWidget {
  const AddVourcherCodeModal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AddVoucherCubit(vourcherRepository: sl<VourcherRepository>()),
      child: BaseBottomSheet(
        title: 'Add Voucher Code',
        content: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Column(
            children: [
              BlocBuilder<AddVoucherCubit, AddVoucherState>(
                builder: (context, state) {
                  return CustomTextfield(
                    label: '',
                    onChange:
                        context.read<AddVoucherCubit>().onVoucherCodeChanged,
                    hint: 'Enter Voucher Code',
                    errorText: state.voucherCode.displayError != null
                        ? 'Voucher code is required'
                        : null,
                  );
                },
              ),
              Spacing.large(),
              BlocConsumer<AddVoucherCubit, AddVoucherState>(
                listener: (context, state) {
                  if (state.status.isFailure) {
                    Utility.showAlert(state.errorMessage);
                  }
                  if (state.status.isSuccess) {
                    context
                        .read<VouchersBloc>()
                        .add(AddVourcher(vourcher: state.vourcher!));
                    context
                        .read<VouchersBloc>()
                        .add(AddActiveVoucher(vourcher: state.vourcher!));
                    Navigator.pop(context);
                    Navigator.pushNamed(context, Routes.redeemVourcher);
                  }
                },
                builder: (context, state) {
                  return CustomButton(
                    loading: state.status.isInProgress,
                    label: 'Add',
                    onPressed: state.isValid
                        ? () => context
                            .read<AddVoucherCubit>()
                            .onSubmitVoucherCode()
                        : null,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

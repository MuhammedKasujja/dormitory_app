import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:dormitory_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';

import '../cubit/add_payment_card_cubit.dart';
import '../widgets/widgets.dart';

class AddPaymentCardScreen extends StatelessWidget {
  const AddPaymentCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Card'),
      ),
      body: BlocProvider(
        create: (context) => AddPaymentCardCubit(),
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.r, 24.r, 16.r, 16.r),
          child: BlocListener<AddPaymentCardCubit, AddPaymentCardState>(
            listener: (context, state) {
              if (state.status.isSuccess) {
                showDialog(
                  context: context,
                  builder: (ctx) => AppAlertDialog(
                    btnText: 'Close',
                    icon: SvgPicture.string(
                      Assets.accountVerifiedIcon,
                    ),
                    title: 'Card Added Sucessfully',
                    onAction: () => Navigator.pop(context),
                  ),
                );
              } else if (state.status.isFailure) {
                Utility.showAlert(state.errorMessage);
              }
            },
            child: Column(
              children: [
                const Expanded(
                  child: SingleChildScrollView(
                    child: AddEditPaymentCardForm(),
                  ),
                ),
                const SizedBox().small(),
                BlocBuilder<AddPaymentCardCubit, AddPaymentCardState>(
                  builder: (context, state) {
                    return CustomButton(
                      loading: state.status.isInProgress,
                      label: 'Save',
                      onPressed: state.isValid
                          ? () {
                              context
                                  .read<AddPaymentCardCubit>()
                                  .onAddPaymentCardSubmitted();
                            }
                          : null,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

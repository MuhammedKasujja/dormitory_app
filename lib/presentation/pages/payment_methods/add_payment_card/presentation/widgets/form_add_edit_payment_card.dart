import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/pages/country_codes/country_codes.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/add_payment_card_cubit.dart';

class AddEditPaymentCardForm extends StatelessWidget {
  const AddEditPaymentCardForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<AddPaymentCardCubit, AddPaymentCardState>(
          builder: (context, state) {
            return CustomTextfield(
              onChange: context.read<AddPaymentCardCubit>().onCardNumberChanged,
              label: 'Card Number',
              hint: '0000  0000 0000 0000',
              errorText: state.cardNumber.displayError != null
                  ? 'Card number is required'
                  : null,
            );
          },
        ),
        const SizedBox().medium(),
        Row(
          children: [
            Flexible(
              child: BlocBuilder<AddPaymentCardCubit, AddPaymentCardState>(
                builder: (context, state) {
                  return CustomTextfield(
                    onChange:
                        context.read<AddPaymentCardCubit>().onExpiryDateChanged,
                    label: "Expiry Date",
                    hint: 'MM/YY',
                  );
                },
              ),
            ),
            SizedBox(width: 16.r),
            Flexible(
                child: BlocBuilder<AddPaymentCardCubit, AddPaymentCardState>(
              builder: (context, state) {
                return CustomTextfield(
                  onChange: context.read<AddPaymentCardCubit>().onCCVChanged,
                  label: "CCV",
                  hint: '123',
                );
              },
            )),
          ],
        ),
        const SizedBox().medium(),
        const CountryDropdown(),
        const SizedBox().medium(),
        BlocBuilder<AddPaymentCardCubit, AddPaymentCardState>(
          builder: (context, state) {
            return CustomTextfield(
              onChange: context.read<AddPaymentCardCubit>().onZipCodeChanged,
              label: 'Zip Code',
              hint: 'Enter Zip code',
            );
          },
        )
      ],
    );
  }
}

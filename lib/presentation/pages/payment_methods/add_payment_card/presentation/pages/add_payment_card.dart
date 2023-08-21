import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/pages/country_codes/views/views.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AddPaymentCardScreen extends StatelessWidget {
  const AddPaymentCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Card'),
      ),
      body: Padding(
        padding:  EdgeInsets.fromLTRB(16.r, 24.r, 16.r, 16.r),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomTextfield(onChange: (value) {}, label: 'Card Number', hint: '0000  0000 0000 0000',),
                    const SizedBox().medium(),
                    Row(
                      children: [
                        Flexible(
                          child: CustomTextfield(
                              onChange: (value) {}, label: "Expiry Date", hint: 'MM/YY',),
                        ),
                        SizedBox(width: 16.r),
                        Flexible(child: CustomTextfield(onChange: (value) {}, label: "CCV", hint: '123',)),
                      ],
                    ),
                    const SizedBox().medium(),
                    const CountryDropdown(),
                    const SizedBox().medium(),
                    CustomTextfield(onChange: (vaule) {}, label: 'Zip Code', hint: 'Enter Zip code',)
                  ],
                ),
              ),
            ),
            const SizedBox().small(),
            CustomButton(onPressed: () {}, label: 'Save')
          ],
        ),
      ),
    );
  }
}

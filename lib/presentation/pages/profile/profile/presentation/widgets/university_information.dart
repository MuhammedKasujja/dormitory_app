import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UniversityInformation extends StatelessWidget {
  const UniversityInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('University Information').title(fontSize: 16, lineHeight: 1.25),
        const SizedBox().scaleHeight(8),
        Text('To ensure eligibility and compliance, please provide your date of birth and gender. This information may be required for age verification purposes or to adhere to any age restrictions imposed by certain accommodations.', style: TextStyle(
            fontSize: 12.sp,
            height: 1.5,
            color: AppColors.text300,
            fontWeight: FontWeight.w400,
          ),),
        const SizedBox().small(),
        CustomTextfield(onChange: (value) {}, label: 'University Name'),
        const SizedBox().small(),
        CustomTextfield(onChange: (value) {}, label: 'University Address'),
        const SizedBox().small(),
        CustomTextfield(onChange: (value) {}, label: 'Country'),
        const SizedBox().small(),
        CustomTextfield(onChange: (value) {}, label: 'City'),
      ],
    );
  }
}
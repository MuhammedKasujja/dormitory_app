import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/complete_profile_cubit.dart';

class AdditionalInformationScreen extends StatelessWidget {
  const AdditionalInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Additional Information',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28.sp,
                  height: 1.21,
                  letterSpacing: -0.56.sp,
                  color: AppColors.text500,
                ),
              ),
              const Spacing(12),
              Text(
                '''To ensure eligibility and compliance, please provide your date of birth and gender. This information may be required for age verification purposes or to adhere to any age restrictions imposed by certain accommodations.''',
                style: TextStyle(
                  color: AppColors.text400,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  height: 1.5,
                ),
              ),
              Spacing.large(),
              const CustomDatepicker(
                controller: null,
                label: 'Date of Birth',
              ),
              Spacing.medium(),
              CustomDropdown(
                // value: 'Male',
                label: 'Gender',
                items: const ['Male', 'Female'],
                onChanged: (v){},
                getLabel: (v) => v,
              ),
            ],
          ),
        ),
        CustomButton(
          label: 'Continue',
          onPressed: () {
            context.read<CompleteProfileCubit>().activatedUniversitySection();
          },
        ),
      ],
    );
  }
}

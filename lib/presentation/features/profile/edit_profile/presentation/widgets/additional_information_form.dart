import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/edit_profile_cubit.dart';

class AddtionalInformationEditForm extends StatelessWidget {
  const AddtionalInformationEditForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Additional Information')
            .title(fontSize: 16, lineHeight: 1.25),
        const SizedBox().scaleHeight(8),
        Text(
          '''To ensure eligibility and compliance, please provide your date of birth and gender. This information may be required for age verification purposes or to adhere to any age restrictions imposed by certain accommodations.''',
          style: TextStyle(
            fontSize: 12.sp,
            height: 1.5,
            color: AppColors.text300,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox().small(),
        BlocBuilder<EditProfileCubit, EditProfileState>(
          builder: (context, state) {
            return CustomTextfield(
              onChange: (value) =>
                  context.read<EditProfileCubit>().dateOfBirthChanged(value),
              label: 'Date of Birth',
              initialValue: state.dateOfBirth.value,
            );
          },
        ),
        const SizedBox().small(),
        BlocBuilder<EditProfileCubit, EditProfileState>(
          builder: (context, state) {
            return CustomDropdown(
              label: 'Gender',
              value: state.gender.value.isNotEmpty ? state.gender.value : null,
              items: const ['Male', 'Female'],
              getLabel: (gender) => gender,
              onChanged: (value) =>
                  context.read<EditProfileCubit>().genderChanged(value),
            );
          },
        ),
      ],
    );
  }
}

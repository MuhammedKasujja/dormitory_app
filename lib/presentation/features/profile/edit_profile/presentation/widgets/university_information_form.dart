import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../complete_profile/presentation/widgets/widgets.dart';
import '../cubit/edit_profile_cubit.dart';

class UniversityInformationEditForm extends StatelessWidget {
  const UniversityInformationEditForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('University Information')
                .title(fontSize: 16, lineHeight: 1.25),
            const Spacing(8),
            Text(
              'To ensure eligibility and compliance, please provide your date of birth and gender. This information may be required for age verification purposes or to adhere to any age restrictions imposed by certain accommodations.',
              style: TextStyle(
                fontSize: 12.sp,
                height: 1.5,
                color: AppColors.text300,
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacing.small(),
            CustomTextfield(
              onChange: (value) =>
                  context.read<EditProfileCubit>().universityNameChanged(value),
              label: 'University Name',
              initialValue: state.universityName.value,
            ),
            Spacing.small(),
            CustomTextfield(
              onChange: (value) => context
                  .read<EditProfileCubit>()
                  .universityAddressChanged(value),
              label: 'University Address',
              initialValue: state.universityAddress.value,
            ),
            Spacing.small(),
            CustomTextfield(
              onChange: (value) => context
                  .read<EditProfileCubit>()
                  .universityCountryChanged(value),
              label: 'Country',
              initialValue: state.universityCountry.value,
            ),
            Spacing.small(),
            CustomTextfield(
              onChange: (value) =>
                  context.read<EditProfileCubit>().universityCityChanged(value),
              label: 'City',
              initialValue: state.universityCity.value,
            ),
            Spacing.small(),
            AttachStudentLetter(
              onAttach: (file) => context
                  .read<EditProfileCubit>()
                  .universityLetterChanged(file.path),
            ),
          ],
        );
      },
    );
  }
}

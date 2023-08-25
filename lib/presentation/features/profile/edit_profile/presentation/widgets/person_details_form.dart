import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/edit_profile_cubit.dart';

class PersonalDetailsEditForm extends StatelessWidget {
  const PersonalDetailsEditForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Personal Details').title(fontSize: 16, lineHeight: 1.25),
        Spacing.small(),
        BlocBuilder<EditProfileCubit, EditProfileState>(
          builder: (context, state) {
            return CustomTextfield(
              label: 'First name',
              initialValue: state.firstname.value,
              onChange: (value) =>
                  context.read<EditProfileCubit>().firstNameChanged(value),
              errorText: state.firstname.displayError != null
                  ? 'First name is required'
                  : null,
            );
          },
        ),
        Spacing.small(),
        BlocBuilder<EditProfileCubit, EditProfileState>(
          builder: (context, state) {
            return CustomTextfield(
              onChange: (value) =>
                  context.read<EditProfileCubit>().lastNameChanged(value),
              label: 'Last name',
              initialValue: state.lastname.value,
              errorText: state.lastname.displayError != null
                  ? 'Last name is required'
                  : null,
            );
          },
        ),
        Spacing.small(),
        BlocBuilder<EditProfileCubit, EditProfileState>(
          builder: (context, state) {
            return CustomTextfield(
              onChange: (value) =>
                  context.read<EditProfileCubit>().emailChanged(value),
              label: 'Email address',
              initialValue: state.email.value,
              errorText: state.email.displayError != null
                  ? 'Please use a valid email'
                  : null,
            );
          },
        ),
        Spacing.small(),
        BlocBuilder<EditProfileCubit, EditProfileState>(
          builder: (context, state) {
            return CustomTextfield(
              onChange: (value) =>
                  context.read<EditProfileCubit>().telephoneChanged(value),
              label: 'Phone Number',
              initialValue: state.telephone.value,
              errorText: state.telephone.displayError != null
                  ? 'Phone number is required'
                  : null,
            );
          },
        ),
      ],
    );
  }
}

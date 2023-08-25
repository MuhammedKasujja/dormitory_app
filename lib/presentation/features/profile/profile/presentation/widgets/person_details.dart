import 'package:dormitory_app/presentation/features/auth/auth.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Personal Details')
                .title(fontSize: 16, lineHeight: 1.25),
            Spacing.small(),
            CustomTextfield(
              enabled: false,
              label: 'First name',
              initialValue: state.user?.firstname,
              onChange: (value) {},
            ),
            Spacing.small(),
            CustomTextfield(
              enabled: false,
              onChange: (value) {},
              label: 'Last name',
              initialValue: state.user?.lastname,
            ),
            Spacing.small(),
            CustomTextfield(
              enabled: false,
              onChange: (value) {},
              label: 'Email address',
              initialValue: state.user?.email,
            ),
            Spacing.small(),
            CustomTextfield(
              enabled: false,
              onChange: (value) {},
              label: 'Phone Number',
              initialValue: state.user?.telephone,
            ),
          ],
        );
      },
    );
  }
}

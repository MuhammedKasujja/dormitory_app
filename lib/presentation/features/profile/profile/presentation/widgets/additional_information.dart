import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/auth/auth.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdditionalInformation extends StatelessWidget {
  const AdditionalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
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
            CustomTextfield(
              enabled: false,
              onChange: (value) {},
              label: 'Date of Birth',
              initialValue: state.user?.dateOfBirth,
            ),
            const SizedBox().small(),
            CustomTextfield(
              enabled: false,
              onChange: (value) {},
              label: 'Gender',
              initialValue: state.user?.gender,
            ),
          ],
        );
      },
    );
  }
}

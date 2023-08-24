import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/pages/pages.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.text1,
        leading: const BackButton(
          color: Colors.white,
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 20.sp,
            height: 1.15,
            fontWeight: FontWeight.w600,
            color: AppColors.text50,
            letterSpacing: -0.2.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserProfileHeader(),
            Padding(
              padding: EdgeInsets.all(16.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return state.status.isAuthenticated &&
                              state.user!.hasCompletedProfile
                          ? const SizedBox.shrink()
                          : const InCompleteProfileAlert();
                    },
                  ),
                  const Spacing(8),
                  const PersonalDetails(),
                  Spacing.medium(),
                  const Divider(),
                  Spacing.medium(),
                  const AddtionalInformation(),
                  Spacing.medium(),
                  const Divider(),
                  Spacing.medium(),
                  const UniversityInformation(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _showBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.r),
        ),
      ),
      builder: (context) {
        return BaseBottomSheet(
          title: 'OTP Verification',
          content: Column(
            children: [
              const OTPVerificationForm(),
              const Spacing(120),
              CustomButton(onPressed: () {}, label: 'Continue')
            ],
          ),
        );
      },
    );
  }
}

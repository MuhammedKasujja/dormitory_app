import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/pages/pages.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

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
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                color: Colors.white,
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
                  const Alert(
                      message:
                          'To enhance your experience with Paramount Students, please complete the verification process.'),
                  const SizedBox().scaleHeight(12),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 150.w,
                      child: CustomButton(
                          onPressed: () {_showBottomSheet(context);}, label: 'Complete Profile'),
                    ),
                  ),
                  const SizedBox().medium(),
                  const Divider(),
                  const SizedBox().medium(),
                  const PersonalDetails(),
                  const SizedBox().medium(),
                  const Divider(),
                  const SizedBox().medium(),
                  const AddtionalInformation(),
                  const SizedBox().medium(),
                  const Divider(),
                  const SizedBox().medium(),
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
        return BaseBottomSheet(title: 'OTP Verification', content: Column(
          children: [
            const OTPVerificationForm(),
            const SizedBox().scaleHeight(120),
            CustomButton(onPressed: (){}, label: 'Continue')
          ],
        ),);
      },
    );
  }
}

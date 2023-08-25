import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/country_codes/country_codes.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/widgets.dart';

class UniversityInformationScreen extends StatelessWidget {
  const UniversityInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'University Information',
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
                CustomTextfield(
                  onChange: (value) {},
                  label: 'University Name',
                ),
                Spacing.small(),
                CustomTextfield(
                  onChange: (value) {},
                  label: 'University Address',
                ),
                Spacing.small(),
                const CountryDropdown(),
                Spacing.small(),
                CustomTextfield(
                  onChange: (value) {},
                  label: 'City',
                ),
                Spacing.small(),
                const AttachStudentLetter(),
                Spacing.small(),
              ],
            ),
          ),
        ),
        CustomButton(
          label: 'Continue',
          onPressed: () => _showAppDialog(context),
        ),
      ],
    );
  }

  _showAppDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AppAlertDialog(
        btnText: 'Continue',
        isNotification: true,
        icon: SvgPicture.string(Assets.accountVerifiedIcon),
        title: 'Profile Updated Successfully',
        onAction: () => Navigator.pop(context),
      ),
    );
  }
}

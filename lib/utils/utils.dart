import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../presentation/widgets/widgets.dart';

class Utility {
  Utility._();

  static void showAlert(String? message) {
    if (message == null) return;
  }

  static showAppDialog(BuildContext context, {String? route}) {
    showDialog(
      context: context,
      builder: (ctx) => AppAlertDialog(
        btnText: 'Continue',
        icon: SvgPicture.string(Assets.otpCodeEmailSentIcon),
        title: 'OTP code sent to your email',
        body: 'We have just sent you an email with the OTP code.',
        onAction: () {
          if (route != null) {
            if (route.isEmpty) {
              Navigator.pop(context);
            } else {
              Navigator.pushNamed(context, route);
            }
          }
        },
      ),
    );
  }
}

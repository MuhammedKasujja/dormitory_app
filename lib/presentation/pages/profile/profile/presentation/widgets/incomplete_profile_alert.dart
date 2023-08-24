import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InCompleteProfileAlert extends StatelessWidget {
  const InCompleteProfileAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Alert(
            message:
                'To enhance your experience with Paramount Students, please complete the verification process.'),
        const Spacing(12),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: 150.w,
            child: CustomButton(
              label: 'Complete Profile',
                onPressed: () {
                  // _showBottomSheet(context);
                },
                ),
          ),
        ),
        Spacing.medium(),
        const Divider(),
        Spacing.small(),
      ],
    );
  }
}

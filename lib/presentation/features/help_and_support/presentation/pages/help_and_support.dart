import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class HelpAndSupportPage extends StatelessWidget {
  const HelpAndSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help and Support'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 24.r, horizontal: 16.r),
              child: Text(
                'How can we help you?',
                style: TextStyle(
                  color: AppColors.text400,
                  fontSize: 24.sp,
                  height: 1.16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            HelpSupportItem(
              title: 'Check FAQs',
              body: 'Read our extensive help articles',
              route: Routes.faqs,
              iconPath: Assets.faqIcon,
            ),
            const Divider(
              height: .8,
            ),
            HelpSupportItem(
              title: 'Contact Customer Support',
              body: 'Get notified about availability, price and promotions',
              route: Routes.customerSupport,
              iconPath: Assets.supportIcon,
            ),
            const Divider(
              height: .8,
            ),
          ],
        ),
      ),
    );
  }
}

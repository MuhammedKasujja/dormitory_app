import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class LegalPage extends StatelessWidget {
  const LegalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Legal',
          style: TextStyle(color: AppColors.text1),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LegalListItem(
              icon: Assets.copyrightIcon,
              title: 'Copyright',
              route: Routes.copyright,
            ),
            LegalListItem(
              icon: Assets.teramAndConditionsIcon,
              title: 'Terms and Conditions',
              route: Routes.termsAndConditions,
            ),
            LegalListItem(
              icon: Assets.policyIcon,
              title: 'Privacy Policies',
              route: Routes.privacyPolicy,
            ),
            LegalListItem(
              icon: Assets.localInfoIcon,
              title: 'Local Information',
              route: Routes.locallInfo,
            ),
            LegalListItem(
              icon: Assets.dataProvidersIcon,
              title: 'Data Providers',
              route: Routes.dataProviders,
            ),
            LegalListItem(
              icon: Assets.softwareLicenseIcon,
              title: 'Software License',
              route: Routes.softwareLicence,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'screens/screens.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const ProgressBar(max: 100, current: 20),
        backgroundColor: const Color(0xFFFFFFFF),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: const VerifyOtpScreen(),
      ),
    );
  }
}

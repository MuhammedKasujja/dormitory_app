import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/complete_profile_cubit.dart';
import '../../data/models/models.dart';
import '../widgets/widgets.dart';
import 'screens/screens.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: BlocBuilder<CompleteProfileCubit, CompleteProfileState>(
          builder: (context, state) {
            return ProgressBar(
              max: state.maxProgress,
              current: state.currentProgress,
            );
          },
        ),
        backgroundColor: const Color(0xFFFFFFFF),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: BlocBuilder<CompleteProfileCubit, CompleteProfileState>(
          buildWhen: (previous, current) => previous.activeSection != current.activeSection,
          builder: (context, state) {
            return state.activeSection.isUniversityInfo
                ? const UniversityInformationScreen()
                : state.activeSection.isVerifyOtp
                    ? const VerifyOtpScreen()
                    : state.activeSection.isAdditionalInfo
                        ? const AdditionalInformationScreen()
                        : const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}

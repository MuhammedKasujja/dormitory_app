import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/models.dart';

part 'complete_profile_state.dart';

class CompleteProfileCubit extends Cubit<CompleteProfileState> {
  CompleteProfileCubit() : super(const CompleteProfileState());

  void activatedVerifyOtpSection() {
    emit(
      state.copyWith(
        activeSection: ActiveProfileSection.verifyOtp,
        currentProgress: 30,
      ),
    );
  }

  void activatedAddititionalInforSection() {
    emit(
      state.copyWith(
        activeSection: ActiveProfileSection.additionalInfo,
        currentProgress: 60,
      ),
    );
  }

  void activatedUniversitySection() {
    emit(
      state.copyWith(
        activeSection: ActiveProfileSection.universityInfo,
        currentProgress: 85,
      ),
    );
  }

  void resetProgress() {
    emit(const CompleteProfileState());
  }
}

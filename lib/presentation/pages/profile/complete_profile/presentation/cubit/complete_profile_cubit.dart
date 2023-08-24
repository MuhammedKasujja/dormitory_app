import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/models.dart';

part 'complete_profile_state.dart';

class CompleteProfileCubit extends Cubit<CompleteProfileState> {
  CompleteProfileCubit() : super(const CompleteProfileState());

  void activatedVerifyOtpSection() {
    emit(const CompleteProfileState(
      activeSection: ActiveProfileSection.verifyOtp,
      progress: 30,
    ));
  }

  void activatedAddititionalInforSection() {
    emit(const CompleteProfileState(
      activeSection: ActiveProfileSection.additionalInfo,
      progress: 60,
    ));
  }

  void activatedUniversitySection() {
    emit(const CompleteProfileState(
      activeSection: ActiveProfileSection.universityInfo,
      progress: 85,
    ));
  }
}

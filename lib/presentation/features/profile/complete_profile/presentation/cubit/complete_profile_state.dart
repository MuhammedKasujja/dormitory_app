part of 'complete_profile_cubit.dart';

class CompleteProfileState extends Equatable {
  const CompleteProfileState({
    this.activeSection = ActiveProfileSection.none,
    this.currentProgress = 0,
    this.maxProgress = 100,
  });

  final ActiveProfileSection activeSection;
  final double currentProgress;
  final double maxProgress;

  CompleteProfileState copyWith({
    required double currentProgress,
    required ActiveProfileSection activeSection,
  }) {
    return CompleteProfileState(
      activeSection: activeSection,
      currentProgress: currentProgress,
      maxProgress: maxProgress,
    );
  }

  @override
  List<Object> get props => [
        activeSection,
        currentProgress,
        maxProgress,
      ];
}

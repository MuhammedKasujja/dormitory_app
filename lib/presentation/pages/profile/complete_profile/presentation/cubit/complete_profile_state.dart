part of 'complete_profile_cubit.dart';

class CompleteProfileState extends Equatable {
  const CompleteProfileState({this.activeSection = ActiveProfileSection.none, this.progress = 0,});

  final ActiveProfileSection activeSection;
  final double progress;

  @override
  List<Object> get props => [activeSection, progress];
}

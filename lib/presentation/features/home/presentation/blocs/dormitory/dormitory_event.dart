part of 'dormitory_bloc.dart';

class DormitoryEvent extends Equatable {
  const DormitoryEvent();

  @override
  List<Object> get props => [];
}

class FetchDormitories extends DormitoryEvent {
  final DormitoryType dormitoryType;
  const FetchDormitories(this.dormitoryType);
  @override
  List<Object> get props => [dormitoryType];
}

class FetchDormitoryDetails extends DormitoryEvent {
  final String dormitoryId;
  const FetchDormitoryDetails(this.dormitoryId);

  @override
  List<Object> get props => [dormitoryId];
}

part of 'local_dormitory_bloc.dart';

class LocalDormitoryEvent extends Equatable {
  const LocalDormitoryEvent();

  @override
  List<Object> get props => [];
}

class FetchLocalDormitories extends LocalDormitoryEvent {}

class AddLocalDormitory extends LocalDormitoryEvent {
  final Dormitory dormitory;

  const AddLocalDormitory(this.dormitory);
  @override
  List<Object> get props => [dormitory];
}

class FetchLocalDormitoryDetails extends LocalDormitoryEvent {
  final String dormitoryId;

  const FetchLocalDormitoryDetails(this.dormitoryId);

  @override
  List<Object> get props => [dormitoryId];
}

class DeleteLocalDormitory extends LocalDormitoryEvent {
  final String dormitoryId;

  const DeleteLocalDormitory(this.dormitoryId);

  @override
  List<Object> get props => [dormitoryId];
}

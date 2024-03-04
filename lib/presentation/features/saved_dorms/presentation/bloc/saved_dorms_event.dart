part of 'saved_dorms_bloc.dart';

 class SavedDormsEvent extends Equatable {
  const SavedDormsEvent();

  @override
  List<Object> get props => [];
}

class FetchLocalDormitories extends SavedDormsEvent {}

class AddLocalDormitory extends SavedDormsEvent {
  final Dormitory dormitory;

  const AddLocalDormitory(this.dormitory);
  @override
  List<Object> get props => [dormitory];
}

class FetchLocalDormitoryDetails extends SavedDormsEvent {
  final String dormitoryId;

  const FetchLocalDormitoryDetails(this.dormitoryId);

  @override
  List<Object> get props => [dormitoryId];
}

class DeleteLocalDormitory extends SavedDormsEvent {
  final String dormitoryId;

  const DeleteLocalDormitory(this.dormitoryId);

  @override
  List<Object> get props => [dormitoryId];
}

part of 'saved_dorms_bloc.dart';

class SavedDormsState extends Equatable {
  const SavedDormsState({
    this.data,
    this.errorMessage,
    this.status = AppState.initial,
    this.dormitory,
  });
  final List<Dormitory>? data;
  final String? errorMessage;
  final AppState status;
  final Dormitory? dormitory;
  @override
  List<Object?> get props => [
        data,
        errorMessage,
        status,
        dormitory,
      ];

  SavedDormsState copyWith({
    List<Dormitory>? data,
    String? errorMessage,
    AppState? status,
    Dormitory? dormitory,
  }) {
    return SavedDormsState(
      data: data ?? this.data,
      errorMessage: errorMessage ?? this.errorMessage,
      status: status ?? this.status,
      dormitory: dormitory ?? this.dormitory,
    );
  }
}

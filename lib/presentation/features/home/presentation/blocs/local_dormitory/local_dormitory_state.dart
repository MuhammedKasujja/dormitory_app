part of 'local_dormitory_bloc.dart';

class LocalDormitoryState extends Equatable {
  const LocalDormitoryState({
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

  LocalDormitoryState copyWith({
    List<Dormitory>? data,
    String? errorMessage,
    AppState? status,
    Dormitory? dormitory,
  }) {
    return LocalDormitoryState(
      data: data ?? this.data,
      errorMessage: errorMessage ?? this.errorMessage,
      status: status ?? this.status,
      dormitory: dormitory ?? this.dormitory,
    );
  }
}

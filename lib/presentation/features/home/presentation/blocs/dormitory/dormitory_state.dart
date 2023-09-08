part of 'dormitory_bloc.dart';

class DormitoryState extends Equatable {
  const DormitoryState({
    this.data,
    this.errorMessage,
    this.dormitory,
    this.status = AppState.initial,
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

  DormitoryState copyWith({
    List<Dormitory>? data,
    String? errorMessage,
    AppState? status,
    Dormitory? dormitory,
  }) {
    return DormitoryState(
      data: data ?? this.data,
      errorMessage: errorMessage ?? this.errorMessage,
      status: status ?? this.status,
      dormitory: dormitory,
    );
  }
}

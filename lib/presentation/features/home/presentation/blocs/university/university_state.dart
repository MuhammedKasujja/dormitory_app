part of 'university_bloc.dart';

class UniversityState extends Equatable {
  const UniversityState({
    this.data,
    this.errorMessage,
    this.status = AppState.initial,
  });
  final List<University>? data;
  final String? errorMessage;
  final AppState status;

  UniversityState copyWith({
    List<University>? data,
    String? errorMessage,
    AppState? status,
  }) {
    return UniversityState(
      data: data ?? this.data,
      errorMessage: errorMessage,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [data, errorMessage, status];
}

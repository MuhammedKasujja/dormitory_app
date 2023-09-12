part of 'city_bloc.dart';

class CityState extends Equatable {
  const CityState({
    this.data,
    this.errorMessage,
    this.status = AppState.initial,
  });
  final List<City>? data;
  final String? errorMessage;
  final AppState status;

  CityState copyWith({
    List<City>? data,
    String? errorMessage,
    AppState? status,
  }) {
    return CityState(
      data: data ?? this.data,
      errorMessage: errorMessage ?? this.errorMessage,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [data, errorMessage, status];
}

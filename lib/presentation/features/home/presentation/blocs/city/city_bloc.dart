import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/entities.dart';
import '../../../domain/repositories/city_repo.dart';

part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final CityRepo cityRepo;
  CityBloc({required this.cityRepo}) : super(const CityState()) {
    on<FetchPopularCities>((event, emit) async {
      emit(state.copyWith(status: AppState.loading));
      final res = await cityRepo.fetchPopularCities();
      if (res.success) {
        emit(state.copyWith(status: AppState.success, data: res.data));
      } else {
        emit(
          state.copyWith(
            status: AppState.failure,
            errorMessage: res.message,
          ),
        );
      }
    });
  }
}

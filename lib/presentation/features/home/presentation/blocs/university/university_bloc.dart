import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/entities.dart';
import '../../../domain/repositories/repositories.dart';

part 'university_event.dart';
part 'university_state.dart';

class UniversityBloc extends Bloc<UniversityEvent, UniversityState> {
  final UniversityRepo universityRepo;
  UniversityBloc({required this.universityRepo})
      : super(const UniversityState()) {
    on<FetchPopularUniversities>((event, emit) async {
      emit(state.copyWith(status: AppState.loading));
      final res = await universityRepo.fetchPopularUniversities();
      if (res.success) {
        emit(state.copyWith(status: AppState.success, data: res.data));
      } else {
        emit(
          state.copyWith(
            errorMessage: res.message,
            status: AppState.failure,
          ),
        );
      }
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/entities.dart';
import '../../../domain/repositories/repositories.dart';

part 'dormitory_event.dart';
part 'dormitory_state.dart';

class DormitoryBloc extends Bloc<DormitoryEvent, DormitoryState> {
  final DormitoryRepository dormitoryRepository;
  DormitoryBloc({required this.dormitoryRepository})
      : super(const DormitoryState()) {
    on<FetchDormitories>((event, emit) async {
      emit(state.copyWith(status: AppState.loading));
      final res = await dormitoryRepository.getDormitories(
        dormitoryType: event.dormitoryType,
      );
      if (res.success) {
        emit(state.copyWith(
          data: res.data,
          status: AppState.success,
        ));
      } else {
        emit(state.copyWith(
          errorMessage: state.errorMessage,
          status: AppState.failure,
        ));
      }
    });

    on<FetchDormitoryDetails>((event, emit) async {
      emit(state.copyWith(status: AppState.loading));
      final res = await dormitoryRepository.getDormitoryDetails(
        dormitoryId: event.dormitoryId,
      );
      if (res.success) {
        emit(state.copyWith(
          dormitory: res.data,
          status: AppState.success,
        ));
      } else {
        emit(state.copyWith(
          errorMessage: state.errorMessage,
          status: AppState.failure,
        ));
      }
    });
  }
}

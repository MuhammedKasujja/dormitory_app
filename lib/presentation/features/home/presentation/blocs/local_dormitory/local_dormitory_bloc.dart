import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/entities.dart';
import '../../../domain/repositories/local_dormitory_repo.dart';

part 'local_dormitory_event.dart';
part 'local_dormitory_state.dart';

class LocalDormitoryBloc
    extends Bloc<LocalDormitoryEvent, LocalDormitoryState> {
  final LocalDormitoryRepository localDormitoryRepository;
  LocalDormitoryBloc({required this.localDormitoryRepository})
      : super(const LocalDormitoryState()) {
    on<FetchLocalDormitories>((event, emit) async {
      emit(state.copyWith(status: AppState.loading));
      final dormitories = await localDormitoryRepository.getLocalDormitories();

      emit(
        state.copyWith(status: AppState.success, data: dormitories),
      );
    });
    on<AddLocalDormitory>((event, emit) async {
      emit(state.copyWith(status: AppState.loading));
      final isSaved = await localDormitoryRepository.addLocalDormitory(
        dormitory: event.dormitory,
      );
      if (isSaved) {
        emit(state.copyWith(status: AppState.success));
      } else {
        emit(
          state.copyWith(
            status: AppState.failure,
            errorMessage: 'Could not save data',
          ),
        );
      }
    });
    on<DeleteLocalDormitory>((event, emit) async {
      emit(state.copyWith(status: AppState.loading));
      final isSaved = await localDormitoryRepository.removeLocalDormitory(
          dormitoryId: event.dormitoryId);

      if (isSaved) {
        emit(state.copyWith(status: AppState.success));
      } else {
        emit(
          state.copyWith(
            status: AppState.failure,
            errorMessage: 'Could not save data',
          ),
        );
      }
    });
  }
}

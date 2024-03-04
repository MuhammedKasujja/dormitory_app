import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:dormitory_app/presentation/features/home/home.dart';
import 'package:equatable/equatable.dart';

import '../../domain/repositories/saved_dormitory_repo.dart';

part 'saved_dorms_event.dart';
part 'saved_dorms_state.dart';

class SavedDormsBloc extends Bloc<SavedDormsEvent, SavedDormsState> {
 final SavedDormitoryRepository savedDormitoryRepository;
  SavedDormsBloc({required this.savedDormitoryRepository})
      : super(const SavedDormsState()) {
    on<FetchLocalDormitories>((event, emit) async {
      emit(state.copyWith(status: AppState.loading));
      final dormitories = await savedDormitoryRepository.getLocalDormitories();

      emit(
        state.copyWith(status: AppState.success, data: dormitories),
      );
    });
    on<AddLocalDormitory>((event, emit) async {
      emit(state.copyWith(status: AppState.loading));
      final isSaved = await savedDormitoryRepository.addLocalDormitory(
        dormitory: event.dormitory as DormitoryModel,
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
      final isSaved = await savedDormitoryRepository.removeLocalDormitory(
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

import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/models.dart';
import '../../data/repositories/repositories.dart';

part 'vouchers_event.dart';
part 'vouchers_state.dart';

class VouchersBloc extends Bloc<VouchersEvent, VouchersState> {
  final VourcherRepository vourcherRepository;
  VouchersBloc({required this.vourcherRepository})
      : super(const VouchersState()) {
    on<FetchMyVourchers>((event, emit) async {
      emit(state.copyWith(status: AppState.loading));
      final res = await vourcherRepository.fetchMyVourchers();
      emit(state.copyWith(data: res.data, status: AppState.success));
    });
  }
}

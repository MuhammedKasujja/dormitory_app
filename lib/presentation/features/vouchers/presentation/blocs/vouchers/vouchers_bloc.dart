import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/voucher.dart';
import '../../../data/repositories/vourcher_repository.dart';

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

    on<AddVourcher>((event, emit) async {
      final vouchers = state.data ?? [];
      vouchers.insert(0, event.vourcher);
      emit(
        state.copyWith(
          data: vouchers,
          status: AppState.success,
        ),
      );
    });

    on<AddActiveVoucher>((event, emit) {
      emit(state.copyWith(activeVoucher: event.vourcher));
    });
  }
}

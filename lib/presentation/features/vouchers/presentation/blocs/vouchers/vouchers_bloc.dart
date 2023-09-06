import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/models.dart';
import '../../../data/repositories/vourcher_repository.dart';
import '../redeem_voucher/redeem_voucher_cubit.dart';

part 'vouchers_event.dart';
part 'vouchers_state.dart';

class VouchersBloc extends Bloc<VouchersEvent, VouchersState> {
  final VourcherRepository vourcherRepository;
  final RedeemVoucherCubit redeemVoucherCubit;
  VouchersBloc({
    required this.vourcherRepository,
    required this.redeemVoucherCubit,
  }) : super(const VouchersState()) {
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

    on<FetchSingleVourcher>((event, emit) async {
      emit(state.copyWith(status: AppState.loading));
      final res = await vourcherRepository.addVourcher(event.voucherCode);
      if (res.success) {
        emit(
          state.copyWith(
            activeVoucher: res.data,
            status: AppState.success,
          ),
        );
      } else {
        emit(
          state.copyWith(
            errorMessage: res.message,
            status: AppState.failure,
          ),
        );
      }
    });

    on<ChangedSortOrder>((event, emit) {
      emit(state.copyWith(filterType: event.filterType));
    });
  }
}

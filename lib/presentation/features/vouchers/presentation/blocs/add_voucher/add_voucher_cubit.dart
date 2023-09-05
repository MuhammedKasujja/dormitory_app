import 'package:bloc/bloc.dart';
import 'package:dormitory_app/validations/validations.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

import '../../../data/models/voucher.dart';
import '../../../data/repositories/vourcher_repository.dart';

part 'add_voucher_state.dart';

class AddVoucherCubit extends Cubit<AddVoucherState> {
  final VourcherRepository vourcherRepository;
  AddVoucherCubit({required this.vourcherRepository})
      : super(const AddVoucherState());

  void onVoucherCodeChanged(String voucher) {
    final voucherCode = RequiredField.dirty(voucher);
    emit(
      state.copyWith(
        voucherCode: voucherCode,
        isValid: Formz.validate([voucherCode]),
      ),
    );
  }

  Future<void> onSubmitVoucherCode() async {
    if (!state.isValid || state.status.isInProgress) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final res = await vourcherRepository.addVourcher(state.voucherCode.value);
    if (res.success) {
      emit(
        state.copyWith(
          vourcher: res.data,
          status: FormzSubmissionStatus.success,
        ),
      );
    } else {
      emit(
        state.copyWith(
          errorMessage: res.message,
          status: FormzSubmissionStatus.failure,
        ),
      );
    }
  }

  Future<void> redeemVoucher(String voucherCode) async {
    onVoucherCodeChanged(voucherCode);
    await onSubmitVoucherCode();
  }
}

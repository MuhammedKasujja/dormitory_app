import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'customer_support_state.dart';

class CustomerSupportCubit extends Cubit<CustomerSupportState> {
  CustomerSupportCubit() : super(CustomerSupportInitial());
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'complete_profile_event.dart';
part 'complete_profile_state.dart';

class CompleteProfileBloc extends Bloc<CompleteProfileEvent, CompleteProfileState> {
  CompleteProfileBloc() : super(CompleteProfileInitial()) {
    on<CompleteProfileEvent>((event, emit) {
    });
  }
}

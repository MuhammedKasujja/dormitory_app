import 'package:bloc/bloc.dart';
import 'package:dormitory_app/validations/validations.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc()
      : super(
          EditProfileState(
            email: Email.pure(),
          ),
        ) {
    on<EditProfileEvent>((event, emit) {});
  }
}

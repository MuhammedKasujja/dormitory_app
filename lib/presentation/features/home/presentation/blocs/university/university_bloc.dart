import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'university_event.dart';
part 'university_state.dart';

class UniversityBloc extends Bloc<UniversityEvent, UniversityState> {
  UniversityBloc() : super(UniversityInitial()) {
    on<UniversityEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

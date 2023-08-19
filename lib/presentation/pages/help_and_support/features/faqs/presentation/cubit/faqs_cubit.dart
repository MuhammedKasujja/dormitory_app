import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/enums.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/models.dart';

part 'faqs_state.dart';

class FaqsCubit extends Cubit<FaqsState> {
  FaqsCubit() : super(const FaqsState());

  void loadQuestions() async {
    try {
      emit(state.copyWith(status: AppState.loading));
      final List<FaqQuestion> questions = [
        const FaqQuestion(id: '457899', title: 'Lease Duration', descrption: '''
Paramount Students offers flexibility in lease durations for many dormitories.
Whether you need short-term or long-term accommodation, you can find options that align 
with your study period. Specify your desired lease duration during the booking
 process to view suitable options.
'''),
        const FaqQuestion(
            id: '65646565', title: 'Booking a Dorm', descrption: '''
Paramount Students offers flexibility in lease durations for many dormitories.
Whether you need short-term or long-term accommodation, you can find options that align 
with your study period. Specify your desired lease duration during the booking
 process to view suitable options.
'''),
        const FaqQuestion(
            id: '7454767', title: 'Managing bookings', descrption: '''
Paramount Students offers flexibility in lease durations for many dormitories.
Whether you need short-term or long-term accommodation, you can find options that align 
with your study period. Specify your desired lease duration during the booking
 process to view suitable options.
'''),
        const FaqQuestion(
            id: '557878', title: 'Roommate Preferences', descrption: '''
Paramount Students offers flexibility in lease durations for many dormitories.
Whether you need short-term or long-term accommodation, you can find options that align 
with your study period. Specify your desired lease duration during the booking
 process to view suitable options.
'''),
        const FaqQuestion(
            id: '6574545', title: 'Fees and Payment', descrption: '''
Paramount Students offers flexibility in lease durations for many dormitories.
Whether you need short-term or long-term accommodation, you can find options that align 
with your study period. Specify your desired lease duration during the booking
 process to view suitable options.
'''),
        const FaqQuestion(
            id: '54787878', title: 'Reviews and Ratings', descrption: '''
Paramount Students offers flexibility in lease durations for many dormitories.
Whether you need short-term or long-term accommodation, you can find options that align 
with your study period. Specify your desired lease duration during the booking
 process to view suitable options.
'''),
        const FaqQuestion(
            id: '3456557', title: 'Security and Safety', descrption: '''
Paramount Students offers flexibility in lease durations for many dormitories.
Whether you need short-term or long-term accommodation, you can find options that align 
with your study period. Specify your desired lease duration during the booking
 process to view suitable options.
'''),
        const FaqQuestion(
            id: '324567', title: 'Cancellation Policy', descrption: '''
Paramount Students offers flexibility in lease durations for many dormitories.
Whether you need short-term or long-term accommodation, you can find options that align 
with your study period. Specify your desired lease duration during the booking
 process to view suitable options.
'''),
      ];
      emit(state.copyWith(questions: questions, status: AppState.success));
    } catch (_) {
      emit(
        state.copyWith(
            status: AppState.failure, errorMessage: 'Failed to load questions'),
      );
    }
  }
}

part of 'faqs_cubit.dart';

class FaqsState extends Equatable {
  const FaqsState({
    this.questions = const [],
    this.status = AppState.initial,
    this.errorMessage,
  });

  final List<FaqQuestion> questions;
  final AppState status;
  final String? errorMessage;
  @override
  List<Object?> get props => [questions, status, errorMessage];

  FaqsState copyWith({
    required AppState status,
    List<FaqQuestion>? questions,
    String? errorMessage,
  }) {
    return FaqsState(
      questions: questions ?? this.questions,
      status: status,
      errorMessage: errorMessage,
    );
  }
}

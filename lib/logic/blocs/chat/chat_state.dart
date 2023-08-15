part of 'chat_bloc.dart';

class ChatState extends Equatable {
  const ChatState({
    required this.messages,
    this.user,
  });
  final types.User? user;
  final List<types.Message> messages;

  @override
  List<Object?> get props => [messages, user];
}

class ChatInitial extends ChatState {
  const ChatInitial() : super(messages: const []);
}

class ChatMessagesLoaded extends ChatState {
  const ChatMessagesLoaded({required super.messages, required super.user});
}

part of 'chat_bloc.dart';

class ChatState extends Equatable {
  const ChatState({
    required this.messages,
    this.user,
    required this.scrollController,
  });
  final ScrollController scrollController;
  final types.User? user;
  final List<types.Message> messages;

  @override
  List<Object?> get props => [messages, user, scrollController];
}

class ChatInitial extends ChatState {
   ChatInitial() : super(messages: const [], scrollController: ScrollController());
}

class ChatMessagesLoaded extends ChatState {
  const ChatMessagesLoaded({required super.messages, required super.user,required super.scrollController});
}

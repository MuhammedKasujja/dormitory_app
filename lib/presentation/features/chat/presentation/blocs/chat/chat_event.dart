part of 'chat_bloc.dart';

class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object> get props => [];
}

class LoadChatMessages extends ChatEvent {}

class SendMessage extends ChatEvent {
  final types.PartialText message;

  const SendMessage(this.message);
  @override
  List<Object> get props => [message];
}

class BlockUser extends ChatEvent {
  final types.User user;

  const BlockUser(this.user);
  @override
  List<Object> get props => [user];
}

class UnBlockUser extends ChatEvent {
  final types.User user;

  const UnBlockUser(this.user);
  @override
  List<Object> get props => [user];
}

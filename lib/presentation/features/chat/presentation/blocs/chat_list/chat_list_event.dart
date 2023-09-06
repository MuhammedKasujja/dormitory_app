part of 'chat_list_bloc.dart';

class ChatListEvent extends Equatable {
  const ChatListEvent();

  @override
  List<Object> get props => [];
}

class LoadRecentChat extends ChatListEvent {}

class ChangeChatView extends ChatListEvent {
  final ChatListViewType view;

  const ChangeChatView(this.view);

  @override
  List<Object> get props => [view];
}

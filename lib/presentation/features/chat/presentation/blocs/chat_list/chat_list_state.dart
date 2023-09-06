part of 'chat_list_bloc.dart';

class ChatListState extends Equatable {
  const ChatListState({required this.chatListViewType, required this.chats});
  final ChatListViewType? chatListViewType;
  final List<ChatModel> chats;

  @override
  List<Object?> get props => [chatListViewType, chats];
}

class ChatListInitial extends ChatListState {
  const ChatListInitial()
      : super(chatListViewType: ChatListViewType.all, chats: const []);
}

class ChatListLoaded extends ChatListState {
  const ChatListLoaded({required super.chats, super.chatListViewType});
}

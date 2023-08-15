import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

part 'chat_list_event.dart';
part 'chat_list_state.dart';

class ChatListBloc extends Bloc<ChatListEvent, ChatListState> {
  ChatListBloc() : super(const ChatListInitial()) {
    on<LoadRecentChat>((event, emit) {
      emit(const ChatListInitial());
      List<ChatModel> chats = [
        const ChatModel(
          user: types.User(
            id: 'sdksdjsd-dbdksdsj-djhkskjsdjks',
            firstName: 'Ronald',
            lastName: 'Richard',
          ),
          category: 'Canva View Dorm',
          lastMessage:
              "Hello! I'd like to know more about the amenities and the lease duration for the dormitory.",
        ),
        const ChatModel(
          user: types.User(
            id: 'sdksdjsd-dbdksdsj-djhkskjsdjks',
            firstName: 'Ronald',
            lastName: 'Richard',
          ),
          category: 'Canva View Dorm',
          lastMessage:
              "Hello! I'd like to know more about the amenities and the lease duration for the dormitory.",
        ),
        const ChatModel(
          user: types.User(
            id: 'sdksdjsd-dbdksdsj-djhkskjsdjks',
            firstName: 'Ronald',
            lastName: 'Richard',
          ),
          category: 'Canva View Dorm',
          lastMessage:
              "Hello! I'd like to know more about the amenities and the lease duration for the dormitory.",
        ),
        const ChatModel(
          user: types.User(
            id: 'sdksdjsd-dbdksdsj-djhkskjsdjks',
            firstName: 'Ronald',
            lastName: 'Richard',
          ),
          category: 'Canva View Dorm',
          lastMessage:
              "Hello! I'd like to know more about the amenities and the lease duration for the dormitory.",
        ),
        const ChatModel(
          user: types.User(
            id: 'sdksdjsd-dbdksdsj-djhkskjsdjks',
            firstName: 'Ronald',
            lastName: 'Richard',
          ),
          category: 'Canva View Dorm',
          lastMessage:
              "Hello! I'd like to know more about the amenities and the lease duration for the dormitory.",
        ),
        const ChatModel(
          user: types.User(
            id: 'sdksdjsd-dbdksdsj-djhkskjsdjks',
            firstName: 'Ronald',
            lastName: 'Richard',
          ),
          category: 'Canva View Dorm',
          lastMessage:
              "Hello! I'd like to know more about the amenities and the lease duration for the dormitory.",
        ),
      ];
      emit(ChatListLoaded(
        chats: chats,
        chatListViewType: state.chatListViewType,
      ));
    });

    on<ChangeChatView>((event, emit) {
      emit(ChatListLoaded(
        chats: state.chats,
        chatListViewType: event.view,
      ));
    });
  }
}

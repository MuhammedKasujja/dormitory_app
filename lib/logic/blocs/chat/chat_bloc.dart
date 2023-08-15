import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:uuid/uuid.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(const ChatInitial()) {
    on<LoadChatMessages>((event, emit) async {
      final response = await rootBundle.loadString('assets/messages.json');
      final messages = (jsonDecode(response) as List)
          .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
          .toList();
      const currentUser = types.User(
        id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
      );
      emit(ChatMessagesLoaded(
          messages: [...messages, ...messages], user: currentUser));
    });

    on<SendMessage>((event, emit) {
      final textMessage = types.TextMessage(
        author: state.user!,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        text: event.message.text,
      );
      final messages = [...state.messages];
      messages.add(textMessage);
      emit(ChatMessagesLoaded(messages: messages, user: state.user));
    });
  }
}

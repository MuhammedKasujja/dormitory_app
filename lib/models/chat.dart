import 'package:equatable/equatable.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatModel extends Equatable {
  final types.User user;
  final String category;
  final String lastMessage;

  const ChatModel({
    required this.user,
    required this.category,
    required this.lastMessage,
  });

  @override
  List<Object?> get props => [user, category, lastMessage];
}

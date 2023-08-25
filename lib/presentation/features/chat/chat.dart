import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/logic/logic.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:dormitory_app/presentation/features/chat/widgets/chat_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => ChatListBloc()..add(LoadRecentChat()),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('Chat'),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            BlocBuilder<ChatListBloc, ChatListState>(
              builder: (context, state) {
                return IconButton(
                  onPressed: () => showPopupMenu(context, state.chatListViewType!),
                  icon: Icon(
                    Icons.filter_list,
                    color: AppColors.text2,
                  ),
                );
              },
            )
          ],
        ),
        body: BlocBuilder<ChatListBloc, ChatListState>(
          builder: (context, state) {
            if (state is ChatListLoaded) {
              return ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: state.chats.length,
                itemBuilder: (context, index) {
                  final chat = state.chats.elementAt(index);
                  return ChatListItem(chat: chat);
                },
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  showPopupMenu(BuildContext context, ChatListViewType chatListViewType) {
    showMenu<ChatListViewType>(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      context: context,
      position: const RelativeRect.fromLTRB(
        25.0,
        25.0,
        0.0,
        0.0,
      ), //position where you want to show the menu on screen
      items: [
        PopupMenuItem<ChatListViewType>(
          value: ChatListViewType.all,
          child: Row(
            children: [
              Icon(
                chatListViewType == ChatListViewType.all
                    ? Icons.radio_button_checked
                    : Icons.radio_button_off_outlined,
              ),
              SizedBox(
                width: 16.w,
              ),
              Text('All', style: TextStyle(fontSize: 14.sp)),
            ],
          ),
        ),
        PopupMenuItem<ChatListViewType>(
          value: ChatListViewType.read,
          child: Row(
            children: [
              Icon(
                chatListViewType == ChatListViewType.read
                    ? Icons.radio_button_checked
                    : Icons.radio_button_off_outlined,
              ),
              SizedBox(
                width: 16.w,
              ),
              Text('Read', style: TextStyle(fontSize: 14.sp)),
            ],
          ),
        ),
        PopupMenuItem<ChatListViewType>(
          value: ChatListViewType.unread,
          child: Row(
            children: [
              Icon(
                chatListViewType == ChatListViewType.unread
                    ? Icons.radio_button_checked
                    : Icons.radio_button_off_outlined,
              ),
              SizedBox(
                width: 16.w,
              ),
              Text('Unread', style: TextStyle(fontSize: 14.sp)),
            ],
          ),
        ),
      ],
      elevation: 8.0,
    ).then((viewSelected) {
      if (viewSelected != null) {
        context.read<ChatListBloc>().add(ChangeChatView(viewSelected));
      }
    });
  }
}

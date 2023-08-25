import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/logic/logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import '../widgets/widgets.dart';
import 'components/components.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChatBloc()..add(LoadChatMessages()),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Material(
                elevation: 4,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.r),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const BackButton(),
                      Center(
                        child: Row(
                          children: [
                            Container(
                              width: 40.w,
                              height: 40.w,
                              decoration: BoxDecoration(
                                color: AppColors.textHint,
                                borderRadius: BorderRadius.circular(
                                  50000,
                                ),
                              ),
                            ),
                            SizedBox(width: 16.w),
                            Text(
                              'John Doe',
                              style: TextStyle(
                                color: AppColors.text2,
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // const Spacer(),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(
                      //     Icons.more_vert,
                      //     color: AppColors.text2,
                      //   ),
                      // )
                      BlocBuilder<ChatBloc, ChatState>(
                        builder: (context, state) {
                          return PopupMenuButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            onSelected: (value) {
                              showDialog(
                                context: context,
                                builder: (ctx) => UnBlockDialog(
                                  onBlock: (user) {},
                                  user: const types.User(
                                    id: 'shdsdksjdklsdslhdlsdlsds',
                                    firstName: 'Kato',
                                    lastName: 'Muhammed',
                                  ),
                                ),
                              );
                            },
                            padding: EdgeInsets.zero,
                            // initialValue: choices[_selection],
                            itemBuilder: (BuildContext context) {
                              return ['Report and Block', 'Unblock']
                                  .map((String choice) {
                                return PopupMenuItem<String>(
                                  value: choice,
                                  child: Text(
                                    choice,
                                    style: TextStyle(fontSize: 14.sp),
                                  ),
                                );
                              }).toList();
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: BlocBuilder<ChatBloc, ChatState>(
                  builder: (context, state) {
                    if (state is ChatMessagesLoaded) {
                      return ListView.builder(
                        controller: state.scrollController,
                        padding: EdgeInsets.only(bottom: 8.h),
                        itemCount: state.messages.length,
                        itemBuilder: (context, index) {
                          final message = state.messages.elementAt(index);
                          if (message.type == types.MessageType.text) {
                            return ChatTextMessage(
                              message: message as types.TextMessage,
                              currentUser: state.user!,
                            );
                          }
                          return const Text(
                            'Message not compatible',
                            style: TextStyle(fontSize: 8),
                          );
                        },
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              ),
              BlocBuilder<ChatBloc, ChatState>(
                builder: (context, _) {
                  return ChatTypingInput(
                    onSendPressed: (message) {
                      context.read<ChatBloc>().add(SendMessage(message));
                    },
                    onAttachmentPressed: () => _showBottomSheetOptions(context),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _showBottomSheetOptions(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16.r),
      ),
    ),
    builder: (context) {
      return const ChatAttachFileWidget();
    },
  );
}

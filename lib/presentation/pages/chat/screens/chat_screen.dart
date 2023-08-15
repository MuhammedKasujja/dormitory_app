import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/logic/logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import '../widgets/widgets.dart';

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
                      PopupMenuButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                        // onSelected: _select,
                        padding: EdgeInsets.zero,
                        // initialValue: choices[_selection],
                        itemBuilder: (BuildContext context) {
                          return ['Report and Block', 'Unblock']
                              .map((String choice) {
                            return PopupMenuItem<String>(
                              value: choice,
                              child: Text(choice, style: TextStyle(fontSize: 14.sp),),
                            );
                          }).toList();
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
                          return const Text('Message not compatible');
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
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                MaterialButton(
                  onPressed: () => print("Will updated later."),
                  color: const Color(0xff025f7f),
                  textColor: Colors.white,
                  child: const Icon(
                    Icons.camera_alt,
                    size: 24,
                  ),
                  padding: const EdgeInsets.all(16),
                  shape: const CircleBorder(),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Camera",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                MaterialButton(
                  onPressed: () => print("Will updated later."),
                  color: const Color(0xff025f7f),
                  textColor: Colors.white,
                  child: const Icon(
                    Icons.photo,
                    size: 24,
                  ),
                  padding: const EdgeInsets.all(16),
                  shape: const CircleBorder(),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Gallery",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                MaterialButton(
                  onPressed: () => print("Will updated later."),
                  color: const Color(0xff025f7f),
                  textColor: Colors.white,
                  child: const Icon(
                    Icons.assignment_rounded,
                    size: 24,
                  ),
                  padding: const EdgeInsets.all(16),
                  shape: const CircleBorder(),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Document",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import 'message_status.dart';

class ChatTextMessage extends StatelessWidget {
  final types.TextMessage message;
  final types.User currentUser;
  const ChatTextMessage(
      {super.key, required this.message, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return message.author.id != currentUser.id
        ? Container(
            margin: EdgeInsets.fromLTRB(16.r, 16.r, size.width * 0.3, 2.5),
            decoration: BoxDecoration(
              border: Border.all(
                width: .5.r,
                color: AppColors.divider,
              ),
              borderRadius: BorderRadius.circular(8.r),
              color: Colors.white,
            ),
            width: size.width * 0.65,
            child: Material(
              borderRadius: BorderRadius.circular(8.r),
              color: Colors.white,
              elevation: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.r, vertical: 4.r),
                child: SizedBox(
                  width: size.width * 0.65 - 12.w,
                  child: _MessageBody(message: message),
                ),
              ),
            ),
          )
        : Container(
            margin: EdgeInsets.fromLTRB(size.width * 0.3, 16.r, 16.r, 2.5),
            width: size.width * 0.65,
            decoration: BoxDecoration(
              border: Border.all(
                width: .5.r,
                color: AppColors.divider,
              ),
              borderRadius: BorderRadius.circular(8.r),
              color: const Color(0xFFFCEAA7),
            ),
            child: Material(
              borderRadius: BorderRadius.circular(8.r),
              color: const Color(0xFFFCEAA7),
              elevation: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
                child: _MessageBody(
                  message: message,
                  currentUser: currentUser,
                ),
              ),
            ),
          );
  }
}

class _MessageBody extends StatelessWidget {
  final types.TextMessage message;
  final types.User? currentUser;
  const _MessageBody({required this.message, this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          message.text,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 12.sp,
            height: 1.5,
            color: AppColors.text1,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox().scaleHeight(4),
        Align(
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '8:45 PM',
                style: TextStyle(
                  fontSize: 10.sp,
                  color: AppColors.textHint,
                ),
              ),
              currentUser != null
                  ? MessageStatusIcon(status: message.status)
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }
}

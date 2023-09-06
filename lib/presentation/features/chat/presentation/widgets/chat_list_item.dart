import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  final ChatModel chat;
  const ChatListItem({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, Routes.chatting),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 12.r),
            child: Row(
              children: [
                Container(
                  width: 48.w,
                  height: 48.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10000),
                  ),
                  child: ImageLoader(
                    imageUrl: chat.user.imageUrl,
                    placeholderImage: Assets.missingProfile,
                  ),
                ),
                SizedBox(width: 16.w),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${chat.user.firstName} ${chat.user.lastName}',
                        style: TextStyle(
                          color: AppColors.text1,
                          fontSize: 14.sp,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        chat.category,
                        style: TextStyle(
                          color: AppColors.text1,
                          fontSize: 16.sp,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        chat.lastMessage,
                        style: TextStyle(
                          color: AppColors.text3,
                          fontSize: 14.sp,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w400,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.r),
                  child: Text(
                    '8:45 PM',
                    style: TextStyle(
                      color: AppColors.text3,
                      fontSize: 12.sp,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1.5)
        ],
      ),
    );
  }
}

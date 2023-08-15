import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class MessageStatusIcon extends StatelessWidget {
  const MessageStatusIcon({super.key, this.status});
  final types.Status? status;
  @override
  Widget build(BuildContext context) {
    switch (status) {
      case types.Status.delivered:
      case types.Status.sent:
        return Image.asset(
          'assets/icon-delivered.png',
          // color: InheritedChatTheme.of(context).theme.primaryColor,
          package: 'flutter_chat_ui',
        );
      case types.Status.error:
        return Image.asset(
          'assets/icon-error.png',
          package: 'flutter_chat_ui',
        );
      case types.Status.seen:
        return Image.asset(
          'assets/icon-seen.png',
          color: AppColors.text3,
          package: 'flutter_chat_ui',
        );
      case types.Status.sending:
        return Center(
          child: SizedBox(
            height: 10,
            width: 10,
            child: CircularProgressIndicator(
              backgroundColor: Colors.transparent,
              strokeWidth: 1.5,
              valueColor: AlwaysStoppedAnimation<Color>(
                AppColors.text3,
              ),
            ),
          ),
        );
      default:
        return const SizedBox(width: 8);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

const chatTheme = DefaultChatTheme(
  backgroundColor: Color(0xFFFAFAFB),
  dateDividerMargin: EdgeInsets.only(bottom: 32, top: 16),
  dateDividerTextStyle: TextStyle(
    color: neutral2,
    fontSize: 12,
    fontWeight: FontWeight.w800,
    height: 1.333,
  ),
//  Widget? deliveredIcon, Widget? documentIcon,
  emptyChatPlaceholderTextStyle: TextStyle(
    color: neutral2,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
  ),
  // Color errorColor : error, Widget? errorIcon, Color inputBackgroundColor : neutral0,
  inputBorderRadius: BorderRadius.vertical(top: Radius.circular(20)),
  //  Decoration? inputContainerDecoration, EdgeInsets inputMargin = EdgeInsets.zero,
  inputPadding: EdgeInsets.fromLTRB(24, 20, 24, 20),
  // Color inputTextColor = neutral7, Color? inputTextCursorColor,
  //  inputTextDecoration = const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.zero, isCollapsed: true),
  inputTextStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
  ),
  messageBorderRadius: 20,
  messageInsetsHorizontal: 20,
  messageInsetsVertical: 16,
  primaryColor: primary,
  receivedEmojiMessageTextStyle: TextStyle(fontSize: 40),
  //  TextStyle? receivedMessageBodyBoldTextStyle, TextStyle? receivedMessageBodyCodeTextStyle, TextStyle? receivedMessageBodyLinkTextStyle,
  receivedMessageBodyTextStyle: TextStyle(
    color: neutral0,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
  ),
  receivedMessageCaptionTextStyle: TextStyle(
      color: neutral2,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.333),
  receivedMessageDocumentIconColor: primary,
  receivedMessageLinkDescriptionTextStyle: TextStyle(
    color: neutral0,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.428,
  ),
  receivedMessageLinkTitleTextStyle: TextStyle(
    color: neutral0,
    fontSize: 16,
    fontWeight: FontWeight.w800,
    height: 1.375,
  ),
  secondaryColor: secondary,
  // Widget? seenIcon, Widget? sendButtonIcon, EdgeInsets? sendButtonMargin, Widget? sendingIcon,
  sentEmojiMessageTextStyle: TextStyle(fontSize: 40),
  //  TextStyle? sentMessageBodyBoldTextStyle, TextStyle? sentMessageBodyCodeTextStyle, TextStyle? sentMessageBodyLinkTextStyle,
  sentMessageBodyTextStyle: TextStyle(
    color: neutral7,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
  ),
  sentMessageCaptionTextStyle: TextStyle(
    color: neutral7WithOpacity,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.333,
  ),
  sentMessageDocumentIconColor: neutral7,
  sentMessageLinkDescriptionTextStyle: TextStyle(
      color: neutral7,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.428),
  sentMessageLinkTitleTextStyle: TextStyle(
    color: neutral7,
    fontSize: 16,
    fontWeight: FontWeight.w800,
    height: 1.375,
  ),
  statusIconPadding: EdgeInsets.symmetric(horizontal: 4),
  systemMessageTheme: SystemMessageTheme(
    margin: EdgeInsets.only(bottom: 24, top: 8, left: 8, right: 8),
    textStyle: TextStyle(
      color: neutral2,
      fontSize: 12,
      fontWeight: FontWeight.w800,
      height: 1.333,
    ),
  ),
  typingIndicatorTheme: TypingIndicatorTheme(
    animatedCirclesColor: neutral1,
    animatedCircleSize: 5.0,
    bubbleBorder: BorderRadius.all(Radius.circular(27.0)),
    bubbleColor: neutral7,
    countAvatarColor: primary,
    countTextColor: secondary,
    multipleUserTextStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: neutral2,
    ),
  ),
  unreadHeaderTheme: UnreadHeaderTheme(
    color: secondary,
    textStyle: TextStyle(
      color: neutral2,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.333,
    ),
  ),
  userAvatarImageBackgroundColor: Colors.transparent,
  userAvatarNameColors: colors,
  userAvatarTextStyle: TextStyle(
    color: neutral7,
    fontSize: 12,
    fontWeight: FontWeight.w800,
    height: 1.333,
  ),
  userNameTextStyle: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w800,
    height: 1.333,
  ),
);

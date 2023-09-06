import 'package:flutter_chat_types/flutter_chat_types.dart';

extension MessageTypeX on MessageType {
  bool get isAudio => this == MessageType.audio;

  bool get isCustom => this == MessageType.custom;

  bool get isFile => this == MessageType.file;

  bool get isImage => this == MessageType.image;

  bool get isText => this == MessageType.text;

  bool get isSystem => this == MessageType.system;

  bool get isUnsupported => this == MessageType.unsupported;

  bool get isVideo => this == MessageType.video;
}

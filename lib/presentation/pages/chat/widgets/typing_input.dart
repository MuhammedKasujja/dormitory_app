import 'dart:math' as math;

import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'send_message_icon.dart';

class ChatTypingInput extends StatefulWidget {
  /// Creates [ChatTypingInput] widget.
  const ChatTypingInput({
    super.key,
    this.isAttachmentUploading,
    this.onAttachmentPressed,
    required this.onSendPressed,
    this.options = const InputOptions(),
  });

  /// Whether attachment is uploading. Will replace attachment button with a
  /// [CircularProgressIndicator]. Since we don't have libraries for
  /// managing media in dependencies we have no way of knowing if
  /// something is uploading so you need to set this manually.
  final bool? isAttachmentUploading;

  /// See [AttachmentButton.onPressed].
  final VoidCallback? onAttachmentPressed;

  final void Function(types.PartialText) onSendPressed;

  final InputOptions options;

  @override
  State<ChatTypingInput> createState() => _InputState();
}

/// [Input] widget state.
class _InputState extends State<ChatTypingInput> {
  late final _inputFocusNode = FocusNode(
    onKeyEvent: (node, event) {
      if (event.physicalKey == PhysicalKeyboardKey.enter &&
          !HardwareKeyboard.instance.physicalKeysPressed.any(
            (el) => <PhysicalKeyboardKey>{
              PhysicalKeyboardKey.shiftLeft,
              PhysicalKeyboardKey.shiftRight,
            }.contains(el),
          )) {
        if (event is KeyDownEvent) {
          _handleSendPressed();
        }
        return KeyEventResult.handled;
      } else {
        return KeyEventResult.ignored;
      }
    },
  );

  bool _sendButtonVisible = false;
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();

    _textController =
        widget.options.textEditingController ?? InputTextFieldController();
    _handleSendButtonVisibilityModeChange();
  }

  void _handleSendButtonVisibilityModeChange() {
    _textController.removeListener(_handleTextControllerChange);
    if (widget.options.sendButtonVisibilityMode ==
        SendButtonVisibilityMode.hidden) {
      _sendButtonVisible = false;
    } else if (widget.options.sendButtonVisibilityMode ==
        SendButtonVisibilityMode.editing) {
      _sendButtonVisible = _textController.text.trim() != '';
      _textController.addListener(_handleTextControllerChange);
    } else {
      _sendButtonVisible = true;
    }
  }

  void _handleSendPressed() {
    final trimmedText = _textController.text.trim();
    if (trimmedText != '') {
      final partialText = types.PartialText(text: trimmedText);
      widget.onSendPressed(partialText);

      if (widget.options.inputClearMode == InputClearMode.always) {
        _textController.clear();
      }
    }
  }

  void _handleTextControllerChange() {
    setState(() {
      _sendButtonVisible = _textController.text.trim() != '';
    });
  }

  Widget _inputBuilder() {
    return Focus(
      autofocus: !widget.options.autofocus,
      child: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            const Divider(height: .5,),
            Material(
              borderRadius: BorderRadius.zero,
              color: const Color(0xFFFAFAFB),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFD3D6DE), width: .5),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        enabled: widget.options.enabled,
                        autocorrect: widget.options.autocorrect,
                        autofocus: widget.options.autofocus,
                        enableSuggestions: widget.options.enableSuggestions,
                        controller: _textController,
                        cursorColor: const Color(0xFFF1C111),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          hintStyle: TextStyle(
                            color: const Color(0xFF90949E),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                          hintText: 'Type a message',
                          border: InputBorder.none,
                          suffixIcon: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxHeight: 24.w,
                              maxWidth: 24.w,
                            ),
                            child: InkWell(
                              onTap: widget.onAttachmentPressed,
                              child: Transform.rotate(
                                angle: -math.pi / 4,
                                child: Transform.flip(
                                  flipX: true,
                                  child: Icon(
                                    Icons.attach_file,
                                    color: AppColors.text3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        focusNode: _inputFocusNode,
                        keyboardType: widget.options.keyboardType,
                        maxLines: 5,
                        minLines: 1,
                        onChanged: widget.options.onTextChanged,
                        onTap: widget.options.onTextFieldTap,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          color: const Color(0xFF111217),
                        ),
                        textCapitalization: TextCapitalization.sentences,
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: 24,
                      ),
                      child: Visibility(
                        visible: _sendButtonVisible,
                        child: SendMessageIcon(
                          onPressed: _handleSendPressed,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant ChatTypingInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.options.sendButtonVisibilityMode !=
        oldWidget.options.sendButtonVisibilityMode) {
      _handleSendButtonVisibilityModeChange();
    }
  }

  @override
  void dispose() {
    _inputFocusNode.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => _inputFocusNode.requestFocus(),
        child: _inputBuilder(),
      );
}

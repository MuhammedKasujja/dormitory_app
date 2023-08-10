// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
// import 'package:flutter_chat_ui/flutter_chat_ui.dart';

// class TypingInput extends StatefulWidget {
//   /// Creates [TypingInput] widget.
//   const TypingInput({
//     super.key,
//     this.isAttachmentUploading,
//     this.onAttachmentPressed,
//     required this.onSendPressed,
//     this.options = const InputOptions(),
//   });

//   /// Whether attachment is uploading. Will replace attachment button with a
//   /// [CircularProgressIndicator]. Since we don't have libraries for
//   /// managing media in dependencies we have no way of knowing if
//   /// something is uploading so you need to set this manually.
//   final bool? isAttachmentUploading;

//   /// See [AttachmentButton.onPressed].
//   final VoidCallback? onAttachmentPressed;

//   /// Will be called on [SendButton] tap. Has [types.PartialText] which can
//   /// be transformed to [types.TextMessage] and added to the messages list.
//   final void Function(types.PartialText) onSendPressed;

//   /// Customisation options for the [TypingInput].
//   final InputOptions options;

//   @override
//   State<TypingInput> createState() => _InputState();
// }

// /// [Input] widget state.
// class _InputState extends State<TypingInput> {
//   late final _inputFocusNode = FocusNode(
//     onKeyEvent: (node, event) {
//       if (event.physicalKey == PhysicalKeyboardKey.enter &&
//           !HardwareKeyboard.instance.physicalKeysPressed.any(
//             (el) => <PhysicalKeyboardKey>{
//               PhysicalKeyboardKey.shiftLeft,
//               PhysicalKeyboardKey.shiftRight,
//             }.contains(el),
//           )) {
//         if (event is KeyDownEvent) {
//           _handleSendPressed();
//         }
//         return KeyEventResult.handled;
//       } else {
//         return KeyEventResult.ignored;
//       }
//     },
//   );

//   bool _sendButtonVisible = false;
//   late TextEditingController _textController;

//   @override
//   void initState() {
//     super.initState();

//     _textController =
//         widget.options.textEditingController ?? InputTextFieldController();
//     _handleSendButtonVisibilityModeChange();
//   }

//   void _handleSendButtonVisibilityModeChange() {
//     _textController.removeListener(_handleTextControllerChange);
//     if (widget.options.sendButtonVisibilityMode ==
//         SendButtonVisibilityMode.hidden) {
//       _sendButtonVisible = false;
//     } else if (widget.options.sendButtonVisibilityMode ==
//         SendButtonVisibilityMode.editing) {
//       _sendButtonVisible = _textController.text.trim() != '';
//       _textController.addListener(_handleTextControllerChange);
//     } else {
//       _sendButtonVisible = true;
//     }
//   }

//   void _handleSendPressed() {
//     final trimmedText = _textController.text.trim();
//     if (trimmedText != '') {
//       final partialText = types.PartialText(text: trimmedText);
//       widget.onSendPressed(partialText);

//       if (widget.options.inputClearMode == InputClearMode.always) {
//         _textController.clear();
//       }
//     }
//   }

//   void _handleTextControllerChange() {
//     setState(() {
//       _sendButtonVisible = _textController.text.trim() != '';
//     });
//   }

//   Widget _inputBuilder() {
//     final query = MediaQuery.of(context);
//     final buttonPadding = InheritedChatTheme.of(context)
//         .theme
//         .inputPadding
//         .copyWith(left: 16, right: 16);
//     final safeAreaInsets = isMobile
//         ? EdgeInsets.fromLTRB(
//             query.padding.left,
//             0,
//             query.padding.right,
//             query.viewInsets.bottom + query.padding.bottom,
//           )
//         : EdgeInsets.zero;
//     final textPadding = InheritedChatTheme.of(context)
//         .theme
//         .inputPadding
//         .copyWith(left: 0, right: 0)
//         .add(
//           EdgeInsets.fromLTRB(
//             widget.onAttachmentPressed != null ? 0 : 24,
//             0,
//             _sendButtonVisible ? 0 : 24,
//             0,
//           ),
//         );

//     return Focus(
//       autofocus: !widget.options.autofocus,
//       child: Padding(
//         padding: InheritedChatTheme.of(context).theme.inputMargin,
//         child: Material(
//           borderRadius: InheritedChatTheme.of(context).theme.inputBorderRadius,
//           color: InheritedChatTheme.of(context).theme.inputBackgroundColor,
//           child: Container(
//             decoration:
//                 InheritedChatTheme.of(context).theme.inputContainerDecoration,
//             padding: safeAreaInsets,
//             child: Row(
//               textDirection: TextDirection.ltr,
//               children: [
//                 if (widget.onAttachmentPressed != null)
//                   AttachmentButton(
//                     isLoading: widget.isAttachmentUploading ?? false,
//                     onPressed: widget.onAttachmentPressed,
//                     padding: buttonPadding,
//                   ),
//                 Expanded(
//                   child: Padding(
//                     padding: textPadding,
//                     child: TextField(
//                       enabled: widget.options.enabled,
//                       autocorrect: widget.options.autocorrect,
//                       autofocus: widget.options.autofocus,
//                       enableSuggestions: widget.options.enableSuggestions,
//                       controller: _textController,
//                       cursorColor: InheritedChatTheme.of(context)
//                           .theme
//                           .inputTextCursorColor,
//                       decoration: InheritedChatTheme.of(context)
//                           .theme
//                           .inputTextDecoration
//                           .copyWith(
//                             hintStyle: InheritedChatTheme.of(context)
//                                 .theme
//                                 .inputTextStyle
//                                 .copyWith(
//                                   color: InheritedChatTheme.of(context)
//                                       .theme
//                                       .inputTextColor
//                                       .withOpacity(0.5),
//                                 ),
//                             hintText:
//                                 InheritedL10n.of(context).l10n.inputPlaceholder,
//                           ),
//                       focusNode: _inputFocusNode,
//                       keyboardType: widget.options.keyboardType,
//                       maxLines: 5,
//                       minLines: 1,
//                       onChanged: widget.options.onTextChanged,
//                       onTap: widget.options.onTextFieldTap,
//                       style: InheritedChatTheme.of(context)
//                           .theme
//                           .inputTextStyle
//                           .copyWith(
//                             color: InheritedChatTheme.of(context)
//                                 .theme
//                                 .inputTextColor,
//                           ),
//                       textCapitalization: TextCapitalization.sentences,
//                     ),
//                   ),
//                 ),
//                 ConstrainedBox(
//                   constraints: BoxConstraints(
//                     minHeight: buttonPadding.bottom + buttonPadding.top + 24,
//                   ),
//                   child: Visibility(
//                     visible: _sendButtonVisible,
//                     child: SendButton(
//                       onPressed: _handleSendPressed,
//                       padding: buttonPadding,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void didUpdateWidget(covariant TypingInput oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (widget.options.sendButtonVisibilityMode !=
//         oldWidget.options.sendButtonVisibilityMode) {
//       _handleSendButtonVisibilityModeChange();
//     }
//   }

//   @override
//   void dispose() {
//     _inputFocusNode.dispose();
//     _textController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) => GestureDetector(
//         onTap: () => _inputFocusNode.requestFocus(),
//         child: _inputBuilder(),
//       );
// }

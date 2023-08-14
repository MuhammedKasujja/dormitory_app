import 'dart:convert';
import 'dart:io';

import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import 'widgets/typing_input.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleAttachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: SizedBox(
          height: 144,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleImageSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Photo'),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleFileSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('File'),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Cancel'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
      final message = types.FileMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        mimeType: lookupMimeType(result.files.single.path!),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: result.files.single.path!,
      );

      _addMessage(message);
    }
  }

  void _handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: result.name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      _addMessage(message);
    }
  }

  void _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      var localPath = message.uri;

      if (message.uri.startsWith('http')) {
        try {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: true,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });

          final client = http.Client();
          final request = await client.get(Uri.parse(message.uri));
          final bytes = request.bodyBytes;
          final documentsDir = (await getApplicationDocumentsDirectory()).path;
          localPath = '$documentsDir/${message.name}';

          if (!File(localPath).existsSync()) {
            final file = File(localPath);
            await file.writeAsBytes(bytes);
          }
        } finally {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: null,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });
        }
      }

      await OpenFilex.open(localPath);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      _messages[index] = updatedMessage;
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  void _loadMessages() async {
    final response = await rootBundle.loadString('assets/messages.json');
    final messages = (jsonDecode(response) as List)
        .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
        .toList();

    setState(() {
      _messages = messages;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xFFFAFAFB),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Row(
            children: [
              Container(
                height: 40.w,
                width: 40.w,
                decoration: BoxDecoration(
                  color: AppColors.divider,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Text(
                'John Doe',
                style: TextStyle(color: AppColors.text2),
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: AppColors.text2,
              ),
            )
          ],
        ),
        body: Chat(
          theme: DefaultChatTheme(
            backgroundColor: const Color(0xFFFAFAFB),
            inputTextColor: const Color(0xFFF1C111),
            messageBorderRadius: 10.r,
            messageInsetsHorizontal: 8.r,
            messageInsetsVertical: 4.r,
            // primaryColor: Colors.transparent,
            // secondaryColor: Colors.white,
            sentMessageBodyTextStyle: TextStyle(
              color: const Color(0xFF111217),
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
            receivedMessageBodyTextStyle: TextStyle(
              color: const Color(0xFF111217),
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
          ),
          messages: _messages,
          onMessageTap: _handleMessageTap,
          onPreviewDataFetched: _handlePreviewDataFetched,
          onSendPressed: _handleSendPressed,
          showUserAvatars: false,
          showUserNames: false,
          user: _user,
          onAttachmentPressed: _handleAttachmentPressed,
          bubbleRtlAlignment: BubbleRtlAlignment.left,
          customBottomWidget: TypingInput(onSendPressed: _handleSendPressed),
          textMessageBuilder: (message,
                  {required messageWidth, required showName}) =>
              Container(
                        padding: EdgeInsets.symmetric(
              horizontal: 8.r,
              vertical: 4.r,
                        ),
                        decoration: BoxDecoration(
              color: message.author.id == _user.id? const Color(0xFFFCEAA7): Colors.white,
              border: Border.all(
                width: .5,
                color: AppColors.divider,
              ),
                        ),
                        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message.text,
                  style: TextStyle(
                    color: AppColors.text1,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
                const SizedBox().scaleHeight(4),
                // Row(
                //   children: [
                    Text(
                      '8:45 PM',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: AppColors.textHint,
                      ),
                  //   ),
                  // ],
                )
              ],
                        ),
                      ),
        ),
      );
}


// class ChatPage extends StatelessWidget {
//   const ChatPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               padding: const EdgeInsets.only(top: 5.0),
//               color: Colors.grey[300],
//               child: Row(
//                 children: [
//                   IconButton(
//                     icon: const Icon(Icons.arrow_back),
//                     onPressed: () {},
//                   ),
//                   Container(
//                     height: 40.0,
//                     width: 40.0,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: const Color(0xff025f7f),
//                         width: 2.0,
//                       ),
//                     ),
//                     child: ImageLoader(
//                       imageUrl:
//                           'https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg',
//                       placeholderImage: Assets.logo,
//                     ),
//                   ),
//                   const SizedBox(width: 8.0),
//                   Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text(
//                         'Steven Longbottom',
//                         style: TextStyle(
//                           fontSize: 15.0,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xff025f7f),
//                         ),
//                       ),
//                       Text(
//                         'Active Now',
//                         style: TextStyle(fontSize: 13.0),
//                       ),
//                     ],
//                   ),
//                   const Spacer(),
//                   IconButton(
//                     icon: const Icon(
//                       Icons.phone,
//                       color: Color(0xff025f7f),
//                     ),
//                     onPressed: () {},
//                   ),
//                   IconButton(
//                     icon: const Icon(
//                       Icons.info,
//                       color: Color(0xff025f7f),
//                     ),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//             ),
//             const Divider(
//               height: 3.0,
//               color: Color(0xff025f7f),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 5.0),
//                 child: ListView.builder(
//                   itemCount: 20,
//                   itemBuilder: (context, index) {
//                     return index % 2 == 0
//                         ? Container(
//                             margin: EdgeInsets.fromLTRB(
//                                 2.5, 2.5, size.width * 0.3, 2.5),
//                             width: size.width * 0.65,
//                             child: Card(
//                               elevation: 3.0,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8.0),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(5.0),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       height: 35.0,
//                                       width: 35.0,
//                                       decoration: BoxDecoration(
//                                         shape: BoxShape.circle,
//                                         border: Border.all(
//                                           color: const Color(0xff025f7f),
//                                           width: 2.0,
//                                         ),
//                                       ),
//                                       child: ImageLoader(
//                                         imageUrl:
//                                             'https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg',
//                                         placeholderImage: Assets.logo,
//                                       ),
//                                     ),
//                                     const SizedBox(width: 5.0),
//                                     SizedBox(
//                                       width: size.width * 0.65 - 43.0,
//                                       child: const Text(
//                                         'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum tenetur error, harum nesciunt ipsum debitis quas aliquid.',
//                                         textAlign: TextAlign.justify,
//                                         style: TextStyle(fontSize: 13.5),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           )
//                         : Container(
//                             margin: EdgeInsets.fromLTRB(
//                                 size.width * 0.3, 2.5, 2.5, 2.5),
//                             width: size.width * 0.65,
//                             child: Card(
//                               color: Colors.blue[50],
//                               elevation: 3.0,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8.0),
//                               ),
//                               child: const Padding(
//                                 padding: EdgeInsets.all(5.0),
//                                 child: Text(
//                                   'Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum tenetur error, harum nesciunt ipsum debitis quas aliquid.',
//                                   textAlign: TextAlign.justify,
//                                   style: TextStyle(fontSize: 13.5),
//                                 ),
//                               ),
//                             ),
//                           );
//                   },
//                 ),
//               ),
//             ),
//             Container(
//               color: Colors.grey[300],
//               padding: const EdgeInsets.symmetric(vertical: 3.0),
//               child: Row(
//                 children: [
//                   const SizedBox(width: 8.0),
//                   Container(
//                     height: 35.0,
//                     width: 35.0,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: const Color(0xff025f7f),
//                         width: 2.0,
//                       ),
//                     ),
//                     child: ImageLoader(
//                       imageUrl:
//                           'https://images.unsplash.com/photo-1448932223592-d1fc686e76ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG9ubGluZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
//                       placeholderImage: Assets.logo,
//                     ),
//                   ),
//                   const SizedBox(width: 8.0),
//                   Expanded(
//                     child: SizedBox(
//                       height: 35.0,
//                       child: TextField(
//                         style: const TextStyle(fontSize: 14.0),
//                         decoration: InputDecoration(
//                           hintText: 'Type a message...',
//                           hintStyle: const TextStyle(fontSize: 14.0),
//                           suffixIcon: IconButton(
//                             icon:
//                                 const Icon(Icons.mic, color: Color(0xff025f7f)),
//                             onPressed: () => print('Mic Pressed'),
//                           ),
//                           contentPadding:
//                               const EdgeInsets.fromLTRB(12.0, 8.0, 8.0, 12.0),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(25.0),
//                             borderSide: const BorderSide(
//                               color: Color(0xff025f7f),
//                               width: 2.0,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 5.0),
//                   InkWell(
//                     child: const Icon(
//                       Icons.add,
//                       color: Color(0xff025f7f),
//                     ),
//                     onTap: () async => await showBottomSheetOptions(context),
//                   ),
//                   const SizedBox(width: 5.0),
//                   InkWell(
//                     child: const Icon(
//                       Icons.send,
//                       color: Color(0xff025f7f),
//                     ),
//                     onTap: () {},
//                   ),
//                   const SizedBox(width: 5.0),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Future<void> showBottomSheetOptions(BuildContext context) {
//   return showModalBottomSheet(
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(16.0),
//         topRight: Radius.circular(16.0),
//       ),
//     ),
//     context: context,
//     builder: (BuildContext context) {
//       return Padding(
//         padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 MaterialButton(
//                   onPressed: () => print("Will updated later."),
//                   color: const Color(0xff025f7f),
//                   textColor: Colors.white,
//                   child: const Icon(
//                     Icons.camera_alt,
//                     size: 24,
//                   ),
//                   padding: const EdgeInsets.all(16),
//                   shape: const CircleBorder(),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(top: 5.0),
//                   child: Text(
//                     "Camera",
//                     style: TextStyle(fontSize: 12.0),
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 MaterialButton(
//                   onPressed: () => print("Will updated later."),
//                   color: const Color(0xff025f7f),
//                   textColor: Colors.white,
//                   child: const Icon(
//                     Icons.photo,
//                     size: 24,
//                   ),
//                   padding: const EdgeInsets.all(16),
//                   shape: const CircleBorder(),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(top: 5.0),
//                   child: Text(
//                     "Gallery",
//                     style: TextStyle(fontSize: 12.0),
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 MaterialButton(
//                   onPressed: () => print("Will updated later."),
//                   color: const Color(0xff025f7f),
//                   textColor: Colors.white,
//                   child: const Icon(
//                     Icons.assignment_rounded,
//                     size: 24,
//                   ),
//                   padding: const EdgeInsets.all(16),
//                   shape: const CircleBorder(),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(top: 5.0),
//                   child: Text(
//                     "Document",
//                     style: TextStyle(fontSize: 12.0),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }

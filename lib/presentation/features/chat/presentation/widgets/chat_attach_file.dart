import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/logic/logic.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'file_attachement_item.dart';

class ChatAttachFileWidget extends StatelessWidget {
  const ChatAttachFileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatAttachmentsBloc()..add(LoadRecentFiles()),
      child: Padding(
        padding: EdgeInsets.only(top: 5.r, bottom: 21.r),
        child: Wrap(
          children: [
            Center(
              child: Container(
                height: 5.h,
                width: 36.w,
                decoration: BoxDecoration(
                  color: AppColors.divider,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.r, 19.r, 16.r, 16.r),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _FileAttachmentType(
                    type: 'Recent Files',
                    attachmentMethod: AttachmentMethod.recent,
                  ),
                  _FileAttachmentType(
                    type: 'Media',
                    attachmentMethod: AttachmentMethod.media,
                  ),
                  _FileAttachmentType(
                    type: 'Files',
                    attachmentMethod: AttachmentMethod.files,
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1, height: 1),
            BlocBuilder<ChatAttachmentsBloc, ChatAttachmentsState>(
              builder: (context, state) {
                return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return FileAttachmentItem(file: state.recentFiles[index]);
                  },
                  separatorBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.r),
                    child: const Divider(
                      height: .5,
                    ),
                  ),
                  itemCount: state.recentFiles.length,
                );
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 56.w,
                        height: 46.h,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              side: const BorderSide(color: Colors.black),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              )),
                          onPressed: () => Navigator.pop(context),
                          child: Icon(
                            Icons.close,
                            color: AppColors.text1,
                          ),
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Flexible(
                        child: BlocBuilder<ChatAttachmentsBloc,
                            ChatAttachmentsState>(
                          builder: (context, state) {
                            return CustomButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              label: state.selectedFiles.isNotEmpty
                                  ? 'Attach (${state.selectedFiles.length})'
                                  : 'Attach',
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _FileAttachmentType extends StatelessWidget {
  final String type;
  final AttachmentMethod attachmentMethod;
  const _FileAttachmentType(
      {required this.type, required this.attachmentMethod});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: () {
          context.read<ChatAttachmentsBloc>().add(
                LoadMedia(attachmentMethod: attachmentMethod),
              );
        },
        child: BlocBuilder<ChatAttachmentsBloc, ChatAttachmentsState>(
          builder: (context, state) {
            return Text(
              type,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: state.attachmentMethod == attachmentMethod
                    ? AppColors.text1
                    : AppColors.text3,
                letterSpacing: -0.16.sp,
                height: 1.25,
              ),
            );
          },
        ),
      ),
    );
  }
}

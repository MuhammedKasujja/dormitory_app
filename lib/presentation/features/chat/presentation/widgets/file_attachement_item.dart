import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:collection/collection.dart';

import '../blocs/blocs.dart';

class FileAttachmentItem extends StatelessWidget {
  final FileAttachmentModel file;
  const FileAttachmentItem({super.key, required this.file});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
      child: InkWell(
        onTap: () {
          context
              .read<ChatAttachmentsBloc>()
              .add(SelectAttachment(attachment: file));
        },
        child: BlocBuilder<ChatAttachmentsBloc, ChatAttachmentsState>(
          builder: (context, state) {
            return Container(
              padding: EdgeInsets.all(16.r),
              color: state.selectedFiles.firstWhereOrNull(
                          (element) => element.path == file.path) !=
                      null
                  ? const Color.fromARGB(255, 222, 227, 235)
                  : Colors.transparent,
              child: Row(
                children: [
                  SvgPicture.string(
                    file.type == FileType.pdf ? Assets.pdfIcon : Assets.docIcon,
                  ),
                  SizedBox(width: 24.w),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          file.name,
                          style: TextStyle(
                            fontSize: 14.sp,
                            height: 1.52,
                            color: AppColors.text1,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              file.size,
                              style: TextStyle(
                                fontSize: 14.sp,
                                height: 1.52,
                                color: AppColors.text2,
                              ),
                            ),
                            Text(
                              file.createdAt,
                              style: TextStyle(
                                fontSize: 12.sp,
                                height: 1.5,
                                color: AppColors.text2,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

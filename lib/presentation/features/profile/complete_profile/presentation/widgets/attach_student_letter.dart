import 'dart:io';

import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class AttachStudentLetter extends StatelessWidget {
  const AttachStudentLetter({super.key, this.onAttach});
  final Function(File file)? onAttach;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Student Letter').label(),
        Spacing.small(),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            color: AppColors.backgroundLight,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.divider),
          ),
          child: InkWell(
            onTap: _pickLetter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.attachLetterIcon),
                Spacing.xs(),
                Text(
                  'Select file to upload',
                  style: TextStyle(
                    color: AppColors.text400,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    height: 1.8,
                  ),
                ),
                Spacing.xs(),
                Text(
                  'Please note that you can only upload PDF, doc or docx file that do not exceed 10MB.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.text300,
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                    height: 1.6,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  _pickLetter() async {
    if (onAttach == null) return;
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      onAttach!(file);
    } else {
      // User canceled the picker
    }
  }
}

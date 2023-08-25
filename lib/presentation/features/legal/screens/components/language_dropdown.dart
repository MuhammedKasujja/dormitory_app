import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

import 'select_language.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16.r),
            ),
          ),
          builder: (context) {
            return const SelectLanguageDialog();
          },
        );
      },
      child: Container(
        width: 220.w,
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: AppColors.backgroundLight,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: AppColors.divider,
            width: 1.r,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'English',
              style: TextStyle(color: AppColors.text3, fontSize: 14.sp),
            ),
            SizedBox(
              width: 16.w,
              height: 16.w,
              child: Icon(Icons.expand_more, color: AppColors.textHint,),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

import 'language_item.dart';

class SelectLanguageDialog extends StatelessWidget {
  const SelectLanguageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select Language',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.text1,
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close),
                ),
              ],
            ),
          ),
          const Divider(thickness: 1, height: 1),
          const LanguageItem(lang: 'English', code: 'en'),
          const LanguageItem(lang: 'French', code: 'fr'),
          const LanguageItem(lang: 'Arabic', code: 'arb'),
          const LanguageItem(lang: 'Turkish', code: 'tr'),
        ],
      ),
    );
  }
}

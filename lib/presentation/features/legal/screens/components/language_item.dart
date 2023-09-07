import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/settings/settings.dart';

class LanguageItem extends StatelessWidget {
  final String lang;
  final String code;
  const LanguageItem({super.key, required this.lang, required this.code});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<SettingsCubit>().changeLocale(code);
        // Future.delayed(const Duration(milliseconds: 1000), (){
        // Navigator.pop(context);
        // });
      },
      child: Container(
        padding: EdgeInsets.all(16.r),
        child: Row(
          children: [
            BlocBuilder<SettingsCubit, SettingsState>(
              builder: (context, state) {
                return Icon(
                  state.lang == code
                      ? Icons.radio_button_checked
                      : Icons.radio_button_unchecked,
                  color: state.lang == code
                      ? AppColors.text1
                      : const Color(0xFFC3C6D2),
                );
              },
            ),
            SizedBox(
              width: 24.w,
            ),
            Text(
              lang,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.text1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

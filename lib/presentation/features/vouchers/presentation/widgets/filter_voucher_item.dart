import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/logic/logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterVoucherItem extends StatelessWidget {
  final String label;
  final String value;
  const FilterVoucherItem(
      {super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // context.read<SettingsCubit>().changeLocale(code);
      },
      child: Container(
        padding: EdgeInsets.all(16.r),
        child: Row(
          children: [
            BlocBuilder<SettingsCubit, SettingsState>(
              builder: (context, state) {
                return Icon(
                  // state.lang == code
                  // ?
                  Icons.radio_button_checked,
                  // : Icons.radio_button_unchecked,
                  // color: state.lang == code
                  // ? AppColors.text1
                  // : const Color(0xFFC3C6D2),
                  color: AppColors.text500,
                );
              },
            ),
            SizedBox(
              width: 24.w,
            ),
            Text(
              label,
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

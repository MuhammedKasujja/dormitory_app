import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavbarItem extends StatelessWidget {
  final String iconPath;
  final String activeIconPath;
  final void Function(int index) onSelected;
  final bool isActive;
  final int iconIndex;
  final String label;

  const NavbarItem({
    super.key,
    required this.iconPath,
    required this.onSelected,
    required this.isActive,
    required this.iconIndex,
    required this.label,
    required this.activeIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: 32.h,
          width: ScreenUtil().setWidth(64),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: isActive ? AppColors.primary50 : Colors.white,
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => onSelected(iconIndex),
            icon: SizedBox(
              width: 24.w,
              height: 24.w,
              child: SvgPicture.asset(isActive ? activeIconPath : iconPath),
            ),
          ),
        ),
        const Spacing(4),
        Text(
          label,
          style: TextStyle(
            color: isActive ? AppColors.text500 : AppColors.text200,
            fontSize: 10.sp,
          ),
        )
      ],
    );
  }
}

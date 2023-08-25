import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LegalListItem extends StatelessWidget {
  final String icon;
  final String title;
  final String route;
  const LegalListItem({
    super.key,
    required this.icon,
    required this.title,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: Container(
        padding: EdgeInsets.all(16.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 24.w,
                  width: 24.w,
                  child: SvgPicture.string(icon),
                ),
                SizedBox(
                  width: 24.w,
                ),
                Text(
                  title,
                  style: TextStyle(color: AppColors.text1),
                )
              ],
            ),
            SizedBox(
              height: 16.w,
              width: 16.w,
              child: const Icon(
                Icons.chevron_right,
                color: Color(0xFFC3C6D2),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HelpSupportItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String body;
  final String route;
  const HelpSupportItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.body,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Row(
          children: [
            SvgPicture.string(iconPath),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: AppColors.text500,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        height: 1.57,
                      ),
                    ),
                    Text(
                      body,
                      style: TextStyle(
                        color: AppColors.text300,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16.w,
              color: const Color(0xFFC3C6D2),
            )
          ],
        ),
      ),
    );
  }
}

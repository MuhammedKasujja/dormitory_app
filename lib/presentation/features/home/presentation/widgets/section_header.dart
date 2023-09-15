import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String? route;
  const SectionHeader({super.key, required this.title, this.route});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: AppColors.text500,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              height: 1.15,
              letterSpacing: -0.2.sp,
            ),
          ),
          InkWell(
            onTap: () {
              if(route != null){
                Navigator.pushNamed(context, route!);
              }
            },
            child: Text(
              'See All',
              style: TextStyle(
                color: AppColors.text500,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 1.57,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

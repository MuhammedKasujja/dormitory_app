import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UserProfileHeader extends StatelessWidget {
  const UserProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.text1,
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50.r),
            child: SizedBox(
              width: 100.w,
              height: 100.w,
              child: ImageLoader(
                imageUrl:
                    'https://static.vecteezy.com/system/resources/thumbnails/019/900/322/small/happy-young-cute-illustration-face-profile-png.png',
                placeholderImage: Assets.logo,
              ),
            ),
          ),
          const SizedBox().small(),
          Text(
            'Victor Emokpare',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              height: 1.15,
              letterSpacing: -0.2.sp,
            ),
          ),
          Text(
            'victoremokpare@example.com',
            style: TextStyle(
              color: AppColors.text100,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
          )
        ],
      ),
    );
  }
}

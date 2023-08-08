import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/extensions/extensions.dart';
import 'package:dormitory_app/presentation/widgets/image_loader.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(32.r, (kToolbarHeight + 24).r, 16.r, 40.r),
      height: 250.h,
      color: Colors.black,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50.r),
            child: SizedBox(
              width: 64.w,
              height: 64.r,
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
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Text(
            'victoremokpare@example.com',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFFC3C6D2),
            ),
          ),
        ],
      ),
    );
  }
}

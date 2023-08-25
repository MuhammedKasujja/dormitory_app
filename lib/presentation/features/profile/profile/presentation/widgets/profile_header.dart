import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/auth/auth.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileHeader extends StatelessWidget {
  const UserProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.text1,
      padding: EdgeInsets.all(16.r),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Stack(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.r),
                    child: SizedBox(
                      width: 100.w,
                      height: 100.w,
                      child: ImageLoader(
                        imageUrl: state.user?.photoUrl,
                        placeholderImage: Assets.missingProfile,
                      ),
                    ),
                  ),
                  Spacing.small(),
                  Text(
                    state.user?.name ?? '',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.15,
                      letterSpacing: -0.2.sp,
                    ),
                  ),
                  const Spacing(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.user?.email ?? '',
                        style: TextStyle(
                          color: AppColors.text100,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      state.status.isAuthenticated && state.user!.isVerified
                          ? Image.asset(Assets.verifiedAccountIcon)
                          : Icon(
                              Icons.error,
                              color: AppColors.error300,
                              size: 20,
                            ),
                    ],
                  )
                ],
              ),
              state.status.isAuthenticated && state.user!.hasCompletedProfile
                  ? const _EditProfileButton()
                  : const SizedBox.shrink(),
            ],
          );
        },
      ),
    );
  }
}

class _EditProfileButton extends StatelessWidget {
  const _EditProfileButton();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      child: InkWell(
        onTap: (){},
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.r,
            vertical: 8.r,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Colors.white),
          ),
          child: Text(
            'Edit',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
              height: 1.5,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/auth/auth.dart';
import 'package:dormitory_app/presentation/features/profile/edit_profile/presentation/cubit/edit_profile_cubit.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileHeaderEditForm extends StatelessWidget {
  const UserProfileHeaderEditForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.text1,
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: SizedBox(
                  width: 100.w,
                  height: 100.w,
                  child: ImageLoader(
                    imageUrl: state.user?.photoUrl,
                    placeholderImage: Assets.missingProfile,
                  ),
                ),
              );
            },
          ),
          Spacing.small(),
          BlocBuilder<EditProfileCubit, EditProfileState>(
            builder: (context, state) {
              return Text(
                '${state.firstname.value} ${state.lastname.value}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.15,
                  letterSpacing: -0.2.sp,
                ),
              );
            },
          ),
          const Spacing(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<EditProfileCubit, EditProfileState>(
                builder: (context, state) {
                  return Text(
                    state.email.value,
                    style: TextStyle(
                      color: AppColors.text100,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  );
                },
              ),
              SizedBox(width: 8.w),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return state.status.isAuthenticated && state.user!.isVerified
                      ? Image.asset(Assets.verifiedAccountIcon)
                      : Icon(
                          Icons.error,
                          color: AppColors.error300,
                          size: 20,
                        );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

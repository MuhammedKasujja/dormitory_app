import 'package:dormitory_app/di_container.dart';
import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/auth/auth.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../cubit/edit_profile_cubit.dart';
import '../widgets/widgets.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.text1,
        leading: const BackButton(
          color: Colors.white,
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 20.sp,
            height: 1.15,
            fontWeight: FontWeight.w600,
            color: AppColors.text50,
            letterSpacing: -0.2.sp,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) {
          final user = context.read<AuthBloc>().state.user;
          return EditProfileCubit(authRepository: sl<AuthRepository>())
            ..onEditProfileActivated(user!);
        },
        child: SingleChildScrollView(
          child: BlocListener<EditProfileCubit, EditProfileState>(
            listener: (context, state) {
              if (state.status.isSuccess) {
                context.read<AuthBloc>().add(AuthUserLoggedIn(state.user!));
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const UserProfileHeaderEditForm(),
                Padding(
                  padding: EdgeInsets.all(16.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacing(8),
                      const PersonalDetailsEditForm(),
                      Spacing.medium(),
                      const Divider(),
                      Spacing.medium(),
                      const AddtionalInformationEditForm(),
                      Spacing.medium(),
                      const Divider(),
                      Spacing.medium(),
                      const UniversityInformationEditForm(),
                      Spacing.medium(),
                      BlocBuilder<EditProfileCubit, EditProfileState>(
                        builder: (context, state) {
                          return CustomButton(
                            loading: state.status.isInProgress,
                            label: 'Save',
                            onPressed: state.isValid
                                ? () {
                                    context
                                        .read<EditProfileCubit>()
                                        .submitEditProfileForm();
                                  }
                                : null,
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
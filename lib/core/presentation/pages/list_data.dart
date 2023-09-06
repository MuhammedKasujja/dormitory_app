import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/auth/auth.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListDataWidget extends StatelessWidget {
  final String guestTitleHeader;
  final Widget guestIcon;
  final Widget child;

  const ListDataWidget({
    super.key,
    required this.guestTitleHeader,
    required this.guestIcon,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.status.isAuthenticated
            ? child
            : Padding(
                padding: EdgeInsets.fromLTRB(16.r, 64.r, 16.r, 16),
                child: Column(
                  children: [
                    guestIcon,
                    Spacing.large(),
                    Text(guestTitleHeader).primary(
                      fontSize: 20,
                      letterSpacing: -0.2,
                      lineHeight: 1.15,
                    ),
                    Spacing.small(),
                    const Text('Please sign up and connect our services')
                        .subtitle(),
                    Spacing.large(),
                    CustomButton(
                      label: 'Sign Up',
                      onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context,
                        Routes.login,
                        (route) => false,
                      ),
                    ),
                  ],
                ),
              );
      },
    );
  }
}

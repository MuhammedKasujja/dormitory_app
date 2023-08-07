import 'package:animations/animations.dart';
import 'package:dormitory_app/presentation/pages/pages.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();
  static const String home = "/";
  static const String login = "login";
  static const String signup = "signup";
  static const String verifyOtp = "verifyOtp";
  static const String changePassword = "changePassword";
}

Route onGenerateRoute(RouteSettings settings) => _fadeThrough(
      settings,
      (context) {
        switch (settings.name) {
          case Routes.home:
            return const HomePage();
          case Routes.login:
            return const LoginPage();
          case Routes.verifyOtp:
            return const VerifyOtpPage();
          case Routes.changePassword:
            return const ChangePasswordPage();
          default:
            return const SizedBox.shrink();
        }
      },
    );

Route<T> _fadeThrough<T>(RouteSettings settings, WidgetBuilder page,
    {int duration = 300}) {
  return PageRouteBuilder<T>(
    settings: settings,
    transitionDuration: Duration(milliseconds: duration),
    pageBuilder: (context, animation, secondaryAnimation) => page(context),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeScaleTransition(animation: animation, child: child);
    },
  );
}

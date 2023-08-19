import 'package:animations/animations.dart';
import 'package:dormitory_app/presentation/pages/chat/screens/chat_screen.dart';
import 'package:dormitory_app/presentation/pages/pages.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();
  static const String home = "/";
  static const String login = "login";
  static const String signup = "signup";
  static const String verifyOtp = "verifyOtp";
  static const String changePassword = "changePassword";
  static const String forgotPassword = "forgotPassword";
  static const String chatting = "chatting/chat";
  static const String chatList = "chatting/list";
  // legal routes begin
  static const String legal = "legal";
  static const String copyright = "/legal/copyright";
  static const String termsAndConditions = "/legal/termsAndConditions";
  static const String privacyPolicy = "/legal/privacyPolicy";
  static const String locallInfo = "/legal/localInfo";
  static const String dataProviders = "/legal/dataProviders";
  static const String softwareLicence = "/legal/softwareLicence";
  // legal routes end

  // settings routes begin
  static const String settings = "settings";
  static const String notificationSettings = "/settings/notifications";
  // settings routes end

  // helpAndSupport routes begin
  static const String helpAndSupport = "helpAndSupport";
  static const String faqs = "/helpAndSupport/faqs";
  static const String customerSupport = "/helpAndSupport/customer";
  // helpAndSupport routes end
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
          case Routes.forgotPassword:
            return const ForgotPasswordPage();
          // legal routes begin
          case Routes.legal:
            return const LegalPage();
          case Routes.copyright:
            return const CopyrightsScreen();
          case Routes.termsAndConditions:
            return const TermsAndConditionsScreen();
          case Routes.privacyPolicy:
            return const PrivacyPolicyScreen();
          case Routes.locallInfo:
            return const LocalInformationScreen();
          case Routes.softwareLicence:
            return const SoftwareLicenseScreen();
          case Routes.dataProviders:
            return const DataProvidersScreen();
          // legal routes end

          // settings routes begin
          case Routes.settings:
            return const SettingsPage();
          case Routes.notificationSettings:
            return const NotificationSettingsScreen();
          // settings routes end
          case Routes.chatList:
            return const ChatPage();
          case Routes.chatting:
            return const ChatScreen();

          case Routes.faqs:
            return const FaqsQuestionsScreen();
          case Routes.helpAndSupport:
            return const HelpAndSupportPage();
          case Routes.customerSupport:
            return const CustomerSupportScreen();
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

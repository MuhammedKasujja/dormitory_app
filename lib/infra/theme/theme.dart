import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  AppTheme._();

  static light(BuildContext context) => ThemeData(
        primarySwatch: _createMaterialColor(const Color(0xFFF1C111)),
        colorScheme:  ColorScheme(
          primary: const Color(0xFFF1C111),
          onPrimary: AppColors.text1,
          secondary: const Color(0xFF0A2139),
          onSecondary: Colors.white,
          surface: Colors.white,
          onSurface: const Color(0xFF0A2139),
          onBackground: const Color(0xFF0A2139),
          background: Colors.white,
          brightness: Brightness.light,
          error: Colors.red,
          onError: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
          ),
        ),
        fontFamily: 'Inter',
        textTheme: TextTheme(
          titleSmall: TextStyle(
            fontFamily: 'Inter',
            color: const Color(0xFF0A2139),
            fontSize: ScreenUtil().setSp(20),
          ),
          titleMedium: TextStyle(
            fontFamily: 'Inter',
            color: const Color(0xFF0A2139),
            fontSize: ScreenUtil().setSp(24),
          ),
          displaySmall: TextStyle(
              fontFamily: 'Inter',
              color: Colors.white,
              fontSize: ScreenUtil().setSp(18),
              fontWeight: FontWeight.w700),
          displayLarge: TextStyle(
            fontFamily: 'Inter',
            color: Colors.white,
            fontSize: ScreenUtil().setSp(36),
            fontWeight: FontWeight.w200,
          ),
          labelMedium: TextStyle(
            fontFamily: 'Inter',
            color: const Color(0xFF0A2139),
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
          labelSmall: TextStyle(
            fontFamily: 'Inter',
            color: const Color(0xFF0A2139),
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
          ),
          labelLarge: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18.sp,
              fontWeight: FontWeight.normal,
              color: const Color(0xFFF1C111)),
          headlineSmall: TextStyle(
            fontFamily: 'Inter',
            color: const Color(0xFF0A2139),
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
          headlineLarge: TextStyle(
            fontFamily: 'Inter',
            color: const Color(0xFF0A2139),
            fontSize: 36.sp,
            fontWeight: FontWeight.normal,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Inter',
            color: Theme.of(context).hintColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        dividerTheme: DividerThemeData(
          thickness: 1,
          color: Theme.of(context).hintColor,
        ),
      );

  static MaterialColor _createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}

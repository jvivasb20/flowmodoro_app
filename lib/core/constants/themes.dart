part of 'constants.dart';

class AppThemeLight {
  static ThemeData appThemeDataLight(BuildContext context) {
    final textStyleBase = GoogleFonts.poppins(
      color: Colors.black,
    );

    return ThemeData.light().copyWith(
        colorScheme: ThemeData.light().colorScheme.copyWith(
              primary: kColorPurple,
              secondary: kColorBlue,
              background: kColorWhite,
            ),
        textTheme: GoogleFonts.latoTextTheme().copyWith(
          // Display
          displayLarge: textStyleBase.copyWith(
            fontSize: 24.sp,
          ),
          displayMedium: textStyleBase.copyWith(
            fontSize: 22.sp,
          ),
          displaySmall: textStyleBase.copyWith(
            fontSize: 20.sp,
          ),
          // Headline
          headlineLarge: textStyleBase.copyWith(
            fontSize: 18.sp,
          ),
          headlineMedium: textStyleBase.copyWith(
            fontSize: 16.sp,
          ),
          headlineSmall: textStyleBase.copyWith(
            fontSize: 14.sp,
          ),
          // Body
          bodyLarge: textStyleBase.copyWith(
            fontSize: 18.sp,
          ),
          bodyMedium: textStyleBase.copyWith(
            fontSize: 16.sp,
          ),
          // Title
          titleLarge: textStyleBase.copyWith(
            fontSize: 18.sp,
          ),
          titleMedium: textStyleBase.copyWith(
            fontSize: 16.sp,
          ),
          titleSmall: textStyleBase.copyWith(
            fontSize: 14.sp,
          ),
          // Label
          labelLarge: textStyleBase.copyWith(
            fontSize: 18.sp,
          ),
          labelMedium: textStyleBase.copyWith(
            fontSize: 16.sp,
          ),
          labelSmall: textStyleBase.copyWith(
            fontSize: 14.sp,
          ),
        ));
  }
}

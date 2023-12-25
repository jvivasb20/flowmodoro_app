part of 'constants.dart';

class AppTheme {
  static ThemeData appThemeData(BuildContext context) {
    final textStyleBase = GoogleFonts.poppins(
      color: kColorWhite,
    );

    return ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: kColorPurpleLight,
              secondary: kColorBlueLight,
            ),
        appBarTheme: ThemeData().appBarTheme.copyWith(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: const IconThemeData(color: kColorWhite),
            ),
        scaffoldBackgroundColor: kColorPurpleLight,
        iconTheme: const IconThemeData(color: kColorWhite),
        textTheme: GoogleFonts.latoTextTheme().copyWith(
          // Display
          displayLarge: textStyleBase.copyWith(
            fontSize: 40.sp,
          ),
          displayMedium: textStyleBase.copyWith(
            fontSize: 36.sp,
          ),
          displaySmall: textStyleBase.copyWith(
            fontSize: 32.sp,
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

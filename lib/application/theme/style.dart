import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:private_fit/application/theme/colors.dart';

/// Class that contains all the different styles of an app
class Style {
  /// Custom page transitions
  static const _pageTransitionsTheme = PageTransitionsTheme(
    builders: {
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );

  /// Light style
  static final ThemeData light = FlexColorScheme.light(
    scheme: FlexScheme.amber,
    useMaterial3: true,
    primary: lightPrimaryColor,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
    colorScheme: const ColorScheme.light().copyWith(
      primary: lightAccentColor,
      secondary: lightAccentColor,
      onSecondary: Colors.white,
    ),
  ).toTheme;
  // final darkTheme = FlexColorScheme.dark(
  //   scheme: FlexScheme.amber,
  //   useMaterial3: true,
  // ).toTheme;
  // ThemeData(
  //   brightness: Brightness.light,
  //   appBarTheme:
  //       const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light),
  //   primaryColor: lightPrimaryColor,
  //   pageTransitionsTheme: _pageTransitionsTheme,
  //   textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
  //   popupMenuTheme: PopupMenuThemeData(
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(6),
  //     ),
  //   ),
  //   colorScheme:
  // const ColorScheme.light().copyWith(
  //     primary: lightAccentColor,
  //     secondary: lightAccentColor,
  //     onSecondary: Colors.white,
  //   ),
  //   // .copyWith(secondary: lightAccentColor),
  // );

  /// Dark style
  static final ThemeData dark = FlexColorScheme.dark(
    scheme: FlexScheme.deepPurple,
    useMaterial3: true,
    primary: darkPrimaryColor,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
    colorScheme: const ColorScheme.light().copyWith(
      primary: darkAccentColor,
      secondary: lightAccentColor,
      onSecondary: darkAccentColor,
    ),
  ).toTheme;
  // ThemeData(
  //   brightness: Brightness.dark,
  //   primaryColor: darkPrimaryColor,
  //   canvasColor: darkCanvasColor,
  //   scaffoldBackgroundColor: darkBackgroundColor,
  //   cardColor: darkCardColor,
  //   dividerColor: darkDividerColor,
  //   dialogBackgroundColor: darkCardColor,
  //   pageTransitionsTheme: _pageTransitionsTheme,
  //   textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
  //   popupMenuTheme: PopupMenuThemeData(
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(6),
  //     ),
  //   ),
  //   colorScheme: const ColorScheme.dark().copyWith(
  //     primary: darkAccentColor,
  //     secondary: darkAccentColor,
  //   ),
  //   // .copyWith(secondary: darkAccentColor),
  // );

  /// Black style (OLED)
  static final ThemeData black = FlexColorScheme.dark(
    scheme: FlexScheme.blueWhale,
    useMaterial3: true,
  ).toTheme;

  // ThemeData(
  //   brightness: Brightness.dark,
  //   primaryColor: blackPrimaryColor,
  //   canvasColor: blackPrimaryColor,
  //   scaffoldBackgroundColor: blackPrimaryColor,
  //   cardColor: blackPrimaryColor,
  //   dividerColor: darkDividerColor,
  //   dialogBackgroundColor: darkCardColor,
  //   pageTransitionsTheme: _pageTransitionsTheme,
  //   textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
  //   popupMenuTheme: PopupMenuThemeData(
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(6),
  //       side: const BorderSide(color: darkDividerColor),
  //     ),
  //   ),
  //   colorScheme: const ColorScheme.dark().copyWith(
  //     primary: blackAccentColor,
  //     secondary: blackAccentColor,
  //   ),
  //   // .copyWith(secondary: blackAccentColor),
  // );
}

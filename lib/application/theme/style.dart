import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    appBarTheme:
        const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light),
    primaryColor: lightPrimaryColor,
    pageTransitionsTheme: _pageTransitionsTheme,
    textTheme: GoogleFonts.rubikTextTheme(ThemeData.light().textTheme),
    popupMenuTheme: PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
    ),
    colorScheme: const ColorScheme.light()
        .copyWith(
          primary: lightAccentColor,
          secondary: lightAccentColor,
          onSecondary: Colors.white,
        )
        .copyWith(secondary: lightAccentColor),
  );

  /// Dark style
  static final ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: darkPrimaryColor,
    canvasColor: darkCanvasColor,
    scaffoldBackgroundColor: darkBackgroundColor,
    cardColor: darkCardColor,
    dividerColor: darkDividerColor,
    dialogBackgroundColor: darkCardColor,
    pageTransitionsTheme: _pageTransitionsTheme,
    textTheme: GoogleFonts.rubikTextTheme(ThemeData.dark().textTheme),
    popupMenuTheme: PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
    ),
    colorScheme: const ColorScheme.dark()
        .copyWith(
          primary: darkAccentColor,
          secondary: darkAccentColor,
        )
        .copyWith(secondary: darkAccentColor),
  );

  /// Black style (OLED)
  static final ThemeData black = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: blackPrimaryColor,
    canvasColor: blackPrimaryColor,
    scaffoldBackgroundColor: blackPrimaryColor,
    cardColor: blackPrimaryColor,
    dividerColor: darkDividerColor,
    dialogBackgroundColor: darkCardColor,
    pageTransitionsTheme: _pageTransitionsTheme,
    textTheme: GoogleFonts.rubikTextTheme(ThemeData.dark().textTheme),
    popupMenuTheme: PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: const BorderSide(color: darkDividerColor),
      ),
    ),
    colorScheme: const ColorScheme.dark()
        .copyWith(
          primary: blackAccentColor,
          secondary: blackAccentColor,
        )
        .copyWith(secondary: blackAccentColor),
  );
}

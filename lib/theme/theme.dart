import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_palette.dart';

class AppTheme{
  static final _fredokaFont = GoogleFonts.fredoka();

  static final _textTheme = TextTheme(
    labelLarge: _fredokaFont,
    labelMedium: _fredokaFont,
    labelSmall: _fredokaFont,
    bodyLarge: _fredokaFont,
    bodyMedium: _fredokaFont,
    bodySmall: _fredokaFont,
    displayLarge: _fredokaFont,
    displayMedium: _fredokaFont.copyWith(fontWeight: FontWeight.w700),
    displaySmall: _fredokaFont,
    titleLarge: _fredokaFont,
    titleMedium: _fredokaFont,
    titleSmall: _fredokaFont,
  );

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPalette.backgroundColor,
    appBarTheme: const AppBarTheme(backgroundColor: AppPalette.backgroundColor),
    textTheme: _textTheme,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27.0),
      enabledBorder: _inputBorder(),
      focusedBorder: _inputBorder(borderColor: AppPalette.gradient2),
      focusedErrorBorder: _inputBorder(borderColor: AppPalette.errorColor),
      errorBorder: _inputBorder(borderColor: AppPalette.errorColor),
      labelStyle:
      _textTheme.labelMedium?.copyWith(color: AppPalette.whiteColor),
    ),
  );

  static _inputBorder({Color borderColor = AppPalette.borderColor}) =>
      OutlineInputBorder(
        borderSide: BorderSide(
          color: borderColor,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      );

  static InputDecoration defaultInputDecoration(
      {String? labelText, String? hintText}) =>
      InputDecoration(
        labelText: labelText,
        hintText: hintText,
      );

  static InputDecoration obscureInputDecoration(
      {String? labelText, String? hintText, void Function()? onTap}) =>
      InputDecoration(
        labelText: labelText,
        hintText: hintText,
        contentPadding: const EdgeInsets.all(23.0),
        suffix: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: onTap,
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(Icons.visibility),
          ),
        ),
      );
}
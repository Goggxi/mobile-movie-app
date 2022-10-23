import 'package:flutter/material.dart';
import 'package:flutter_movie_app/config/app_colors.dart';

class AppThemes {
  static final ThemeData light = ThemeData(
    fontFamily: 'Roboto',
    primarySwatch: AppColors.toMaterialColor(AppColors.primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
      ),
    ),
  );

  static final ThemeData dark = ThemeData.dark().copyWith();
}

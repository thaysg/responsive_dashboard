import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import 'custom_material_color.dart';

class AppTheme {
  const AppTheme._();

  // Antes de sair criando Widgets personalizados
  // Verifique se não tem como personalizar ele por aqui!

  static final light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryDark,
      onPrimary: primaryDark,
      primary: lilyWhite,
      secondary: secondaryDark,
      onSecondary: primaryDark,
      outline: secondaryDark,
      onTertiary: primaryDark,
    ),
    primarySwatch: CustomMaterialColor.createMaterialColor(primaryDark),
    primaryColor: primaryDark,
    scaffoldBackgroundColor: quartz,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryDark,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(150, 50),
        primary: primaryDark.withOpacity(0.5),
        elevation: 5,
        splashFactory: NoSplash.splashFactory,
      ),
    ),
    iconTheme: const IconThemeData(
      color: primaryDark,
    ),
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor:
          MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) {
          return primaryDark;
        }
        if (states.contains(MaterialState.error)) {
          return redDark;
        }
        return secondaryDark.withOpacity(0.5);
      }),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: const BorderSide(
          color: primaryDark,
          width: 2,
        ),
      ),
    ),

    /* cardTheme: const CardTheme(),
    snackBarTheme: const SnackBarThemeData(),
    drawerTheme: const DrawerThemeData(),
    textTheme: const TextTheme(), */
  );

  static final dark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryDark,
      onPrimary: primaryDark,
      brightness: Brightness.dark,
      primary: lilyWhite,
      secondary: secondaryDark,
      onSecondary: primaryDark,
      outline: secondaryDark,
      onTertiary: primaryDark,
    ),
    primaryColorDark: primaryDark,
    brightness: Brightness.dark,
    primaryColor: primaryDark,
    scaffoldBackgroundColor: background,
    canvasColor: secondaryDark,
    primarySwatch: CustomMaterialColor.createMaterialColor(primaryDark),
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor:
          MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) {
          return primaryDark;
        }
        if (states.contains(MaterialState.error)) {
          return redDark;
        }
        return secondaryDark;
      }),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: const BorderSide(
          color: primaryDark,
          width: 2,
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryDark,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(150, 50),
        primary: primaryDark.withOpacity(0.5),
        elevation: 5,
        splashFactory: NoSplash.splashFactory,
      ),
    ),
    iconTheme: const IconThemeData(
      color: secondaryDark,
    ),
  );
}

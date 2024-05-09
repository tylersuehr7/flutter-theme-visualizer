import 'package:flutter/material.dart';

import 'styles.dart';

/// [TextTheme] that provides only text dimensions.
///
/// Includes only the font size, weight, etc.
const TextTheme customTextTheme = TextTheme(
  displayLarge: TextStyle(debugLabel: "customTextTheme displayLarge", fontSize: 57.0, fontWeight: FontWeight.w400, letterSpacing: -0.25, height: 1.12, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  displayMedium: TextStyle(debugLabel: "customTextTheme displayMedium", fontSize: 45.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.16, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  displaySmall: TextStyle(debugLabel: "customTextTheme displaySmall", fontSize: 36.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.22, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  headlineLarge: TextStyle(debugLabel: "customTextTheme headlineLarge", fontSize: 32.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.25, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  headlineMedium: TextStyle(debugLabel: "customTextTheme headlineMedium", fontSize: 28.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.29, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  headlineSmall: TextStyle(debugLabel: "customTextTheme headlineSmall", fontSize: 24.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.33, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  titleLarge: TextStyle(debugLabel: "customTextTheme titleLarge", fontSize: 22.0, fontWeight: FontWeight.w600, letterSpacing: 0.0, height: 1.27, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  titleMedium: TextStyle(debugLabel: "customTextTheme titleMedium", fontSize: 16.0, fontWeight: FontWeight.w500, letterSpacing: 0.15, height: 1.50, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  titleSmall: TextStyle(debugLabel: "customTextTheme titleSmall", fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1, height: 1.43, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  labelLarge: TextStyle(debugLabel: "customTextTheme labelLarge", fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1, height: 1.43, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  labelMedium: TextStyle(debugLabel: "customTextTheme labelMedium", fontSize: 12.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, height: 1.33, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  labelSmall: TextStyle(debugLabel: "customTextTheme labelSmall", fontSize: 11.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, height: 1.45, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  bodyLarge: TextStyle(debugLabel: "customTextTheme bodyLarge", fontSize: 16.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, height: 1.50, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  bodyMedium: TextStyle(debugLabel: "customTextTheme bodyMedium", fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 0.25, height: 1.43, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  bodySmall: TextStyle(debugLabel: "customTextTheme bodySmall", fontSize: 12.0, fontWeight: FontWeight.w400, letterSpacing: 0.4, height: 1.33, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
);

/// [TextTheme] based on Roboto typeface.
///
/// Includes only the font family.
const TextTheme roboto = TextTheme(
  displayLarge: TextStyle(debugLabel: "roboto displayLarge", fontFamily: "Roboto", decoration: TextDecoration.none),
  displayMedium: TextStyle(debugLabel: "roboto displayMedium", fontFamily: "Roboto", decoration: TextDecoration.none),
  displaySmall: TextStyle(debugLabel: "roboto displaySmall", fontFamily: "Roboto", decoration: TextDecoration.none),
  headlineLarge: TextStyle(debugLabel: "roboto headlineLarge", fontFamily: "Roboto", decoration: TextDecoration.none),
  headlineMedium: TextStyle(debugLabel: "roboto headlineMedium", fontFamily: "Roboto", decoration: TextDecoration.none),
  headlineSmall: TextStyle(debugLabel: "roboto headlineSmall", fontFamily: "Roboto", decoration: TextDecoration.none),
  titleLarge: TextStyle(debugLabel: "roboto titleLarge", fontFamily: "Roboto", decoration: TextDecoration.none),
  titleMedium: TextStyle(debugLabel: "roboto titleMedium", fontFamily: "Roboto", decoration: TextDecoration.none),
  titleSmall: TextStyle(debugLabel: "roboto titleSmall", fontFamily: "Roboto", decoration: TextDecoration.none),
  bodyLarge: TextStyle(debugLabel: "roboto bodyLarge", fontFamily: "Roboto", decoration: TextDecoration.none),
  bodyMedium: TextStyle(debugLabel: "roboto bodyMedium", fontFamily: "Roboto", decoration: TextDecoration.none),
  bodySmall: TextStyle(debugLabel: "roboto bodySmall", fontFamily: "Roboto", decoration: TextDecoration.none),
  labelLarge: TextStyle(debugLabel: "roboto labelLarge", fontFamily: "Roboto", decoration: TextDecoration.none),
  labelMedium: TextStyle(debugLabel: "roboto labelMedium", fontFamily: "Roboto", decoration: TextDecoration.none),
  labelSmall: TextStyle(debugLabel: "roboto labelSmall", fontFamily: "Roboto", decoration: TextDecoration.none),
);

/// [TextTheme] based on Quicksand typeface.
///
/// Includes only the font family.
const TextTheme quicksand = TextTheme(
  displayLarge: TextStyle(debugLabel: "quicksand displayLarge", fontFamily: "Quicksand", decoration: TextDecoration.none),
  displayMedium: TextStyle(debugLabel: "quicksand displayMedium", fontFamily: "Quicksand", decoration: TextDecoration.none),
  displaySmall: TextStyle(debugLabel: "quicksand displaySmall", fontFamily: "Quicksand", decoration: TextDecoration.none),
  headlineLarge: TextStyle(debugLabel: "quicksand headlineLarge", fontFamily: "Quicksand", decoration: TextDecoration.none),
  headlineMedium: TextStyle(debugLabel: "quicksand headlineMedium", fontFamily: "Quicksand", decoration: TextDecoration.none),
  headlineSmall: TextStyle(debugLabel: "quicksand headlineSmall", fontFamily: "Quicksand", decoration: TextDecoration.none),
  titleLarge: TextStyle(debugLabel: "quicksand titleLarge", fontFamily: "Quicksand", decoration: TextDecoration.none),
  titleMedium: TextStyle(debugLabel: "quicksand titleMedium", fontFamily: "Quicksand", decoration: TextDecoration.none),
  titleSmall: TextStyle(debugLabel: "quicksand titleSmall", fontFamily: "Quicksand", decoration: TextDecoration.none),
  bodyLarge: TextStyle(debugLabel: "quicksand bodyLarge", fontFamily: "Quicksand", decoration: TextDecoration.none),
  bodyMedium: TextStyle(debugLabel: "quicksand bodyMedium", fontFamily: "Quicksand", decoration: TextDecoration.none),
  bodySmall: TextStyle(debugLabel: "quicksand bodySmall", fontFamily: "Quicksand", decoration: TextDecoration.none),
  labelLarge: TextStyle(debugLabel: "quicksand labelLarge", fontFamily: "Quicksand", decoration: TextDecoration.none),
  labelMedium: TextStyle(debugLabel: "quicksand labelMedium", fontFamily: "Quicksand", decoration: TextDecoration.none),
  labelSmall: TextStyle(debugLabel: "quicksand labelSmall", fontFamily: "Quicksand", decoration: TextDecoration.none),
);

/// [TextTheme] based on Poppins typeface.
///
/// Includes only the font family.
const TextTheme poppins = TextTheme(
  displayLarge: TextStyle(debugLabel: "poppins displayLarge", fontFamily: "Poppins", decoration: TextDecoration.none),
  displayMedium: TextStyle(debugLabel: "poppins displayMedium", fontFamily: "Poppins", decoration: TextDecoration.none),
  displaySmall: TextStyle(debugLabel: "poppins displaySmall", fontFamily: "Poppins", decoration: TextDecoration.none),
  headlineLarge: TextStyle(debugLabel: "poppins headlineLarge", fontFamily: "Poppins", decoration: TextDecoration.none),
  headlineMedium: TextStyle(debugLabel: "poppins headlineMedium", fontFamily: "Poppins", decoration: TextDecoration.none),
  headlineSmall: TextStyle(debugLabel: "poppins headlineSmall", fontFamily: "Poppins", decoration: TextDecoration.none),
  titleLarge: TextStyle(debugLabel: "poppins titleLarge", fontFamily: "Poppins", decoration: TextDecoration.none),
  titleMedium: TextStyle(debugLabel: "poppins titleMedium", fontFamily: "Poppins", decoration: TextDecoration.none),
  titleSmall: TextStyle(debugLabel: "poppins titleSmall", fontFamily: "Poppins", decoration: TextDecoration.none),
  bodyLarge: TextStyle(debugLabel: "poppins bodyLarge", fontFamily: "Poppins", decoration: TextDecoration.none),
  bodyMedium: TextStyle(debugLabel: "poppins bodyMedium", fontFamily: "Poppins", decoration: TextDecoration.none),
  bodySmall: TextStyle(debugLabel: "poppins bodySmall", fontFamily: "Poppins", decoration: TextDecoration.none),
  labelLarge: TextStyle(debugLabel: "poppins labelLarge", fontFamily: "Poppins", decoration: TextDecoration.none),
  labelMedium: TextStyle(debugLabel: "poppins labelMedium", fontFamily: "Poppins", decoration: TextDecoration.none),
  labelSmall: TextStyle(debugLabel: "poppins labelSmall", fontFamily: "Poppins", decoration: TextDecoration.none),
);

/// [TextTheme] based on Work Sans typeface.
///
/// Includes only the font family.
const TextTheme workSans = TextTheme(
  displayLarge: TextStyle(debugLabel: "work sans displayLarge", fontFamily: "WorkSans", decoration: TextDecoration.none),
  displayMedium: TextStyle(debugLabel: "work sans displayMedium", fontFamily: "WorkSans", decoration: TextDecoration.none),
  displaySmall: TextStyle(debugLabel: "work sans displaySmall", fontFamily: "WorkSans", decoration: TextDecoration.none),
  headlineLarge: TextStyle(debugLabel: "work sans headlineLarge", fontFamily: "WorkSans", decoration: TextDecoration.none),
  headlineMedium: TextStyle(debugLabel: "work sans headlineMedium", fontFamily: "WorkSans", decoration: TextDecoration.none),
  headlineSmall: TextStyle(debugLabel: "work sans headlineSmall", fontFamily: "WorkSans", decoration: TextDecoration.none),
  titleLarge: TextStyle(debugLabel: "work sans titleLarge", fontFamily: "WorkSans", decoration: TextDecoration.none),
  titleMedium: TextStyle(debugLabel: "work sans titleMedium", fontFamily: "WorkSans", decoration: TextDecoration.none),
  titleSmall: TextStyle(debugLabel: "work sans titleSmall", fontFamily: "WorkSans", decoration: TextDecoration.none),
  bodyLarge: TextStyle(debugLabel: "work sans bodyLarge", fontFamily: "WorkSans", decoration: TextDecoration.none),
  bodyMedium: TextStyle(debugLabel: "work sans bodyMedium", fontFamily: "WorkSans", decoration: TextDecoration.none),
  bodySmall: TextStyle(debugLabel: "work sans bodySmall", fontFamily: "WorkSans", decoration: TextDecoration.none),
  labelLarge: TextStyle(debugLabel: "work sans labelLarge", fontFamily: "WorkSans", decoration: TextDecoration.none),
  labelMedium: TextStyle(debugLabel: "work sans labelMedium", fontFamily: "WorkSans", decoration: TextDecoration.none),
  labelSmall: TextStyle(debugLabel: "work sans labelSmall", fontFamily: "WorkSans", decoration: TextDecoration.none),
);

/// [TextTheme] based on Open Sans typeface.
///
/// Includes only the font family.
const TextTheme openSans = TextTheme(
  displayLarge: TextStyle(debugLabel: "open sans displayLarge", fontFamily: "OpenSans", decoration: TextDecoration.none),
  displayMedium: TextStyle(debugLabel: "open sans displayMedium", fontFamily: "OpenSans", decoration: TextDecoration.none),
  displaySmall: TextStyle(debugLabel: "open sans displaySmall", fontFamily: "OpenSans", decoration: TextDecoration.none),
  headlineLarge: TextStyle(debugLabel: "open sans headlineLarge", fontFamily: "OpenSans", decoration: TextDecoration.none),
  headlineMedium: TextStyle(debugLabel: "open sans headlineMedium", fontFamily: "OpenSans", decoration: TextDecoration.none),
  headlineSmall: TextStyle(debugLabel: "open sans headlineSmall", fontFamily: "OpenSans", decoration: TextDecoration.none),
  titleLarge: TextStyle(debugLabel: "open sans titleLarge", fontFamily: "OpenSans", decoration: TextDecoration.none),
  titleMedium: TextStyle(debugLabel: "open sans titleMedium", fontFamily: "OpenSans", decoration: TextDecoration.none),
  titleSmall: TextStyle(debugLabel: "open sans titleSmall", fontFamily: "OpenSans", decoration: TextDecoration.none),
  bodyLarge: TextStyle(debugLabel: "open sans bodyLarge", fontFamily: "OpenSans", decoration: TextDecoration.none),
  bodyMedium: TextStyle(debugLabel: "open sans bodyMedium", fontFamily: "OpenSans", decoration: TextDecoration.none),
  bodySmall: TextStyle(debugLabel: "open sans bodySmall", fontFamily: "OpenSans", decoration: TextDecoration.none),
  labelLarge: TextStyle(debugLabel: "open sans labelLarge", fontFamily: "OpenSans", decoration: TextDecoration.none),
  labelMedium: TextStyle(debugLabel: "open sans labelMedium", fontFamily: "OpenSans", decoration: TextDecoration.none),
  labelSmall: TextStyle(debugLabel: "open sans labelSmall", fontFamily: "OpenSans", decoration: TextDecoration.none),
);

/// [TextTheme] based on Libre Franklin typeface.
///
/// Includes only the font family.
const TextTheme libreFranklin = TextTheme(
  displayLarge: TextStyle(debugLabel: "libre franklin displayLarge", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  displayMedium: TextStyle(debugLabel: "libre franklin displayMedium", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  displaySmall: TextStyle(debugLabel: "libre franklin displaySmall", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  headlineLarge: TextStyle(debugLabel: "libre franklin headlineLarge", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  headlineMedium: TextStyle(debugLabel: "libre franklin headlineMedium", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  headlineSmall: TextStyle(debugLabel: "libre franklin headlineSmall", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  titleLarge: TextStyle(debugLabel: "libre franklin titleLarge", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  titleMedium: TextStyle(debugLabel: "libre franklin titleMedium", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  titleSmall: TextStyle(debugLabel: "libre franklin titleSmall", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  bodyLarge: TextStyle(debugLabel: "libre franklin bodyLarge", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  bodyMedium: TextStyle(debugLabel: "libre franklin bodyMedium", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  bodySmall: TextStyle(debugLabel: "libre franklin bodySmall", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  labelLarge: TextStyle(debugLabel: "libre franklin labelLarge", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  labelMedium: TextStyle(debugLabel: "libre franklin labelMedium", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
  labelSmall: TextStyle(debugLabel: "libre franklin labelSmall", fontFamily: "LibreFranklin", decoration: TextDecoration.none),
);

/// The default application theme.
final ThemeData defaultTheme = ThemeData(
  textTheme: customTextTheme.merge(roboto),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
  inputDecorationTheme: customInputDecorationTheme,
  elevatedButtonTheme: const ElevatedButtonThemeData(style: customButtonStyle),
  outlinedButtonTheme: const OutlinedButtonThemeData(style: customButtonStyle),
  filledButtonTheme: const FilledButtonThemeData(style: customButtonStyle),
  textButtonTheme: const TextButtonThemeData(style: customButtonStyle),
  useMaterial3: true,
);

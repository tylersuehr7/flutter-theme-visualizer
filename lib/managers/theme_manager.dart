import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_visualizer/design/themes.dart';

/// Global manager for application theme.
final class ThemeManager extends Cubit<ThemeData> {
  ThemeManager(): super(defaultTheme);

  /// Changes the seed color of current [ColorScheme].
  ///
  /// [seedColor] the new seed color to use
  void changeSeedColor(final Color seedColor) {
    final ColorScheme newColorScheme = ColorScheme.fromSeed(seedColor: seedColor);
    emit(state.copyWith(colorScheme: newColorScheme));
  }

  /// Changes the theme of current [TextTheme].
  ///
  /// [textTheme] the new text theme to use
  void changeTextTheme(final TextTheme textTheme) {
    emit(state.copyWith(textTheme: state.textTheme.merge(textTheme)));
  }
}

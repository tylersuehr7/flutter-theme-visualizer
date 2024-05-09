import 'dart:ui';

extension AppColorExtensions on Color {

  static const bool _includeAlphaHexStr = false;

  /// Helper method to convert a color into a simple hex format string.
  String get asHexString {
    final String alpha = this.alpha.toRadixString(16).padLeft(2, '0');
    final String red = this.red.toRadixString(16).padLeft(2, '0');
    final String green = this.green.toRadixString(16).padLeft(2, '0');
    final String blue = this.blue.toRadixString(16).padLeft(2, '0');
    if (_includeAlphaHexStr) {
      return "#$alpha$red$green$blue".toUpperCase();
    }
    return "#$red$green$blue".toUpperCase();
  }

}

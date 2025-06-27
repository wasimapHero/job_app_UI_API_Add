import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../core/utils/pref_utils.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light();
}

class LightCodeColors {
  // App Colors
  Color get black => Color(0xFF1E1E1E);
  Color get white => Color(0xFFFFFFFF);

  // Additional Colors
  Color get blackCustom => Colors.black;
  Color get whiteCustom => Colors.white;
  Color get transparentCustom => Colors.transparent;
  Color get greyCustom => Colors.grey;
  Color get colorFF5698 => Color(0xFF5698ED);
  Color get colorFF3566 => Color(0xFF3566D0);
  Color get colorFFE2DF => Color(0xFFE2DFDF);
  Color get colorFFD9D9 => Color(0xFFD9D9D9);
  Color get colorFFE7DD => Color(0xFFE7DDDD);
  Color get colorFF746D => Color(0xFF746D6D);
  Color get colorFFE6C4 => Color(0xFFE6C4C4);
  Color get colorFF0E51 => Color(0xFF0E51E1);
  Color get colorFF6B8F => Color(0xFF6B8FD2);
  Color get colorFFFAF4 => Color(0xFFFAF4F4);
  Color get colorFFA9A8 => Color(0xFFA9A8A8);
  Color get colorFF5D5A => Color(0xFF5D5A5A);
  Color get colorFFB0B0 => Color(0xFFB0B0B0);
  Color get colorFFC5BE => Color(0xFFC5BEBE);
  Color get colorFF3365 => Color(0xFF3365CF);

  // Color Shades - Each shade has its own dedicated constant
  Color get grey300 => Colors.grey.shade300;
  Color get grey200 => Colors.grey.shade200;
  Color get grey100 => Colors.grey.shade100;
}

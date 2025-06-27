import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A helper class for managing text styles in the application
class TextStyleHelper {
  static TextStyleHelper? _instance;

  TextStyleHelper._();

  static TextStyleHelper get instance {
    _instance ??= TextStyleHelper._();
    return _instance!;
  }

  // Headline Styles
  // Medium-large text styles for section headers

  TextStyle get headline26 => TextStyle(
        fontSize: 26.fSize,
        color: appTheme.whiteCustom,
      );

  // Title Styles
  // Medium text styles for titles and subtitles

  TextStyle get title20RegularRoboto => TextStyle(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get title16 => TextStyle(
        fontSize: 16.fSize,
        color: appTheme.blackCustom,
      );

  // Body Styles
  // Standard text styles for body content

  TextStyle get body15 => TextStyle(
        fontSize: 15.fSize,
        color: appTheme.blackCustom,
      );

  TextStyle get body14 => TextStyle(
        fontSize: 14.fSize,
        color: appTheme.blackCustom,
      );

  TextStyle get body12 => TextStyle(
        fontSize: 12.fSize,
        color: appTheme.blackCustom,
      );

  TextStyle get body12SemiBold => TextStyle(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );
}

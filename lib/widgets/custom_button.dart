import 'package:flutter/material.dart';

import '../core/app_export.dart';
import './custom_image_view.dart';

/// Custom button widget that supports multiple variants including service buttons and indicator buttons
///
/// Supports different button styles:
/// - Service button with icon, border, and hover effects
/// - Small indicator/tab button for pagination or selection
///
/// @param variant - The button variant to display
/// @param onTap - Callback function when button is tapped
/// @param width - Button width (optional)
/// @param height - Button height (optional)
/// @param backgroundColor - Background color (optional)
/// @param borderColor - Border color (optional)
/// @param imagePath - Path to icon/image for service buttons (optional)
/// @param isSelected - Whether the button is in selected state (optional)
class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.variant,
    this.onTap,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderColor,
    this.imagePath,
    this.isSelected = false,
  }) : super(key: key);

  /// The button variant to display
  final CustomButtonVariant variant;

  /// Callback function when button is tapped
  final VoidCallback? onTap;

  /// Button width
  final double? width;

  /// Button height
  final double? height;

  /// Background color
  final Color? backgroundColor;

  /// Border color
  final Color? borderColor;

  /// Path to icon/image for service buttons
  final String? imagePath;

  /// Whether the button is in selected state
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? _getDefaultWidth(),
        height: height ?? _getDefaultHeight(),
        decoration: _getBoxDecoration(),
        child: _getButtonContent(),
      ),
    );
  }

  /// Get default width based on variant
  double _getDefaultWidth() {
    switch (variant) {
      case CustomButtonVariant.service:
        return 75.h;
      case CustomButtonVariant.indicator:
        return 19.h;
    }
  }

  /// Get default height based on variant
  double _getDefaultHeight() {
    switch (variant) {
      case CustomButtonVariant.service:
        return 78.h;
      case CustomButtonVariant.indicator:
        return 7.h;
    }
  }

  /// Get box decoration based on variant
  BoxDecoration _getBoxDecoration() {
    switch (variant) {
      case CustomButtonVariant.service:
        return BoxDecoration(
          color: backgroundColor ?? appTheme.transparentCustom,
          border: Border.all(
            color: borderColor ?? appTheme.colorFFC5BE,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(25.h),
        );
      case CustomButtonVariant.indicator:
        return BoxDecoration(
          color: backgroundColor ??
              (isSelected ? appTheme.colorFF3365 : appTheme.grey300),
          borderRadius: BorderRadius.circular(3.h),
        );
    }
  }

  /// Get button content based on variant
  Widget? _getButtonContent() {
    switch (variant) {
      case CustomButtonVariant.service:
        if (imagePath != null) {
          return Center(
            child: CustomImageView(
              imagePath: imagePath!,
              height: 42.h,
              width: 42.h,
              fit: BoxFit.contain,
            ),
          );
        }
        return null;
      case CustomButtonVariant.indicator:
        return null;
    }
  }
}

/// Enum for different button variants
enum CustomButtonVariant {
  /// Large service button with icon and border
  service,

  /// Small indicator button for pagination/selection
  indicator,
}

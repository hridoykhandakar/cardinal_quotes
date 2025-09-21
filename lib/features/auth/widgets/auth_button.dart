import 'package:cardinal_quotes/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

enum ButtonVariant { defaultStyle, outline, secondary }

class AuthButton extends StatelessWidget {
  final String text;
  final ButtonVariant variant;
  final VoidCallback onPressed;

  const AuthButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.variant = ButtonVariant.defaultStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: _buttonStyle(),
      child: Text(text, style: _textStyle()),
    );
  }

  ButtonStyle _buttonStyle() {
    switch (variant) {
      case ButtonVariant.outline:
        return ElevatedButton.styleFrom(
          backgroundColor: AppColors.color1,

          side: BorderSide(color: AppColors.color3, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          minimumSize: Size(100, 35),
          elevation: 0,
        );

      case ButtonVariant.defaultStyle:
      default:
        return ElevatedButton.styleFrom(
          backgroundColor: AppColors.color3,
          side: BorderSide(color: AppColors.color3, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          minimumSize: Size(100, 35),
          elevation: 0,
        );
    }
  }

  TextStyle _textStyle() {
    Color textColor;
    switch (variant) {
      case ButtonVariant.outline:
        textColor = AppColors.color3;
        break;
      case ButtonVariant.defaultStyle:
      default:
        textColor = AppColors.white;
    }
    return TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }
}

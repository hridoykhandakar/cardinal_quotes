import 'package:cardinal_quotes/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SeeMoreButton extends StatelessWidget {
  final VoidCallback onPressed;
  const SeeMoreButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(Icons.arrow_forward_ios, size: 14, color: AppColors.color1),
      label: Text(
        "See More",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.color1,
        ),
      ),
      style: ButtonStyle(
        iconAlignment: IconAlignment.end,
        padding: WidgetStatePropertyAll(EdgeInsets.zero),
      ),
    );
  }
}

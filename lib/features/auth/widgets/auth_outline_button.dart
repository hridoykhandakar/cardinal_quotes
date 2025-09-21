import 'package:cardinal_quotes/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AuthOutlineButton extends StatelessWidget {
  const AuthOutlineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.color3,
        side: BorderSide(color: AppColors.color3, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        minimumSize: Size(100, 35),
      ),
      child: Text(
        "Signup",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}

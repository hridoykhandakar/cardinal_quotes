import 'package:cardinal_quotes/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String imgUrl;
  const HomeCard({super.key, required this.title, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: AppColors.color1,
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SvgPicture.asset(imgUrl, height: 24, width: 24),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.color3,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

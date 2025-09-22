import 'package:cardinal_quotes/core/constants/app_colors.dart';
import 'package:cardinal_quotes/core/constants/sidebar_list_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.color1),
      titleSpacing: 0,
      title: SizedBox(
        height: 60,

        child: ListView.builder(
          itemCount: sidebarListData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final item = sidebarListData[index];
            return Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.color1,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Row(
                  children: [
                    SvgPicture.asset(item.icon, width: 24, height: 24),
                    const SizedBox(width: 8),
                    Text(
                      item.title,
                      style: TextStyle(
                        color: AppColors.color3,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:cardinal_quotes/core/constants/app_colors.dart';
import 'package:cardinal_quotes/core/constants/sidebar_list_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.color1,
      child: Column(
        mainAxisSize: MainAxisSize.min, // Prevents unnecessary expansion
        children: [
          // Fixed Header
          SizedBox(
            height: 250,

            child: DrawerHeader(
              decoration: BoxDecoration(color: AppColors.color1),

              child: SizedBox.expand(
                // Ensures Stack fills the full header space
                child: Stack(
                  children: [
                    // Left image (positioned for consistency)
                    Positioned(
                      left: 0,
                      bottom:
                          0, // Changed from Align; adjust if needed (e.g., bottom: 20.0)
                      child: Image.asset("assets/images/drawer_left.png"),
                    ),
                    // Right image (fixed positioning to stay inside header)
                    Positioned(
                      right: 0,
                      bottom: 0, // Changed from -30 to avoid clipping/overflow
                      child: Image.asset("assets/images/drawer_right.png"),
                    ),
                    Positioned(
                      top: 50,
                      right: 15,
                      left: 10,
                      child: Column(
                        children: [
                          Text(
                            "Peace comes from within. Do not seek it without.",
                            style: TextStyle(
                              color: AppColors.quoteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "- Buddha",
                            style: TextStyle(
                              color: AppColors.quoteColor,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),

                    // Close button (now properly positioned for taps)
                    Positioned(
                      top: 8.0,
                      right: 8.0,
                      child: IconButton(
                        padding: EdgeInsets.all(8.0), // Larger touch area
                        icon: Icon(Icons.close, color: AppColors.color3),
                        onPressed: () {
                          print("Drawer closed");
                          Navigator.of(context).pop(); // Closes the drawer
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Scrollable Menu Items (with gaps, no overflow)
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero, // No extra padding
              itemCount: sidebarListData.length,
              itemBuilder: (context, index) {
                final item = sidebarListData[index];
                return ListTile(
                  leading: SvgPicture.asset(item.icon, width: 24, height: 24),
                  title: Text(
                    item.title,
                    style: TextStyle(
                      color: AppColors.color3,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    print("Tapped: ${item.title}"); // Debug
                    Navigator.of(context).pop(); // Close drawer
                    // Add navigation: e.g., if (item.route != null) Navigator.pushNamed(context, item.route!);
                  },
                );
              },
              separatorBuilder: (context, index) =>
                  SizedBox(height: 8), // Divider between items
            ),
          ),
          Divider(),
          // Fixed Logout Footer
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10.0,
              left: 16.0,
              right: 16.0,
            ), // Added horizontal padding for alignment
            child: TextButton.icon(
              onPressed: () {
                Navigator.of(context).pop(); // Close drawer
                // Add logout logic: e.g., FirebaseAuth.instance.signOut();
              },
              label: Text(
                "Logout",
                style: TextStyle(
                  color: AppColors.color3,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              icon: Icon(Icons.logout, color: AppColors.color3, size: 24),
              style: TextButton.styleFrom(
                // Use styleFrom for simplicity; icon on left by default
                iconAlignment: IconAlignment.start, // Ensures icon on left
                foregroundColor: AppColors.color3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

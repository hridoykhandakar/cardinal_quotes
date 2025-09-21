import 'package:cardinal_quotes/core/constants/app_colors.dart';
import 'package:cardinal_quotes/core/theme/theme.dart';
import 'package:cardinal_quotes/features/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String imgUrl = "assets/images/bottom_nav";

  final List<Widget> _pages = [
    HomeView(),
    Center(child: Text("Sounds Page")),
    Center(child: Text("Soul Page")),
    Center(child: Text("Quotes Page")),
    Center(child: Text("More Page")),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu, color: AppColors.color1),
        ),
      ),
      backgroundColor: AppColors.homeBg,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.color1,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: 68,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          selectedItemColor: AppColors.color3,
          unselectedItemColor: AppColors.color3,
          unselectedLabelStyle: TextStyle(fontSize: 16),
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          items: [
            BottomNavigationBarItem(
              icon: bottomSvgIcon(iconName: "home"),
              activeIcon: bottomSvgIcon(iconName: "home_active"),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: bottomSvgIcon(iconName: "music"),
              activeIcon: bottomSvgIcon(iconName: "music_active"),
              label: "Sounds",
            ),
            BottomNavigationBarItem(
              icon: bottomSvgIcon(iconName: "soul"),
              activeIcon: bottomSvgIcon(iconName: "soul_active"),
              label: "Soul",
            ),
            BottomNavigationBarItem(
              icon: bottomSvgIcon(iconName: "quotes"),
              activeIcon: bottomSvgIcon(iconName: "quotes_active"),
              label: "Quotes",
            ),
            BottomNavigationBarItem(
              icon: bottomSvgIcon(iconName: "more"),
              activeIcon: bottomSvgIcon(iconName: "more_active"),
              label: "  More",
            ),
          ],
        ),
      ),
      drawer: Drawer(child: Center(child: Text("Drawer Menu"))),

      body: _pages[_selectedIndex],
    );
  }

  SvgPicture bottomSvgIcon({required iconName}) =>
      SvgPicture.asset("$imgUrl/$iconName.svg", height: 24, width: 24);
}

// NavigationBar(
//         selectedIndex: _selectedIndex,
//         indicatorColor: Colors.transparent,

//         destinations: [
//           NavigationDestination(
//             icon: SvgPicture.asset("$imgUrl/home.svg", height: 24, width: 24),
//             selectedIcon: SvgPicture.asset(
//               "$imgUrl/home_active.svg",
//               height: 24,
//               width: 24,
//             ),

//             label: "Home",
//           ),
//           NavigationDestination(
//             icon: SvgPicture.asset("$imgUrl/music.svg", height: 24, width: 24),
//             label: "Sounds",
//           ),
//           NavigationDestination(
//             icon: SvgPicture.asset("$imgUrl/soul.svg", height: 24, width: 24),
//             label: "Soul",
//           ),
//           NavigationDestination(
//             icon: SvgPicture.asset("$imgUrl/quotes.svg", height: 24, width: 24),
//             label: "Quotes",
//           ),
//           NavigationDestination(
//             icon: SvgPicture.asset("$imgUrl/more.svg", height: 24, width: 24),
//             label: "More",
//           ),
//         ],
//       ),

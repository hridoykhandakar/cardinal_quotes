import 'package:cardinal_quotes/features/home/widgets/feature_wallpaper.dart';
import 'package:cardinal_quotes/features/home/widgets/home_cards.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeCards(),
          FeatureWallpaper(),
          Container(height: 200, width: double.infinity, color: Colors.green),
        ],
      ),
    );
  }
}

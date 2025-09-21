import 'package:cardinal_quotes/features/home/widgets/announcement_section.dart';
import 'package:cardinal_quotes/features/home/widgets/feature_wallpaper.dart';
import 'package:cardinal_quotes/features/home/widgets/featured_memorial_cards.dart';
import 'package:cardinal_quotes/features/home/widgets/featured_quotes.dart';
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
          const SizedBox(height: 32),
          FeaturedQuotes(),
          const SizedBox(height: 32),
          FeaturedMemorialCards(),
          const SizedBox(height: 32),
          AnnouncementSection(),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

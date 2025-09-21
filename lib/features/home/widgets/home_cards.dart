import 'package:cardinal_quotes/core/constants/card_data.dart';
import 'package:cardinal_quotes/features/home/widgets/home_card.dart';
import 'package:flutter/material.dart';

class HomeCards extends StatelessWidget {
  const HomeCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 50, top: 20),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 100 / 70,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: homeCardData.map((card) {
          return HomeCard(title: card.title, imgUrl: card.imgUrl);
        }).toList(),
      ),
    );
  }
}

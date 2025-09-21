import 'package:cardinal_quotes/core/widgets/image_card.dart';
import 'package:cardinal_quotes/core/widgets/section_header.dart';
import 'package:flutter/material.dart';

class FeaturedMemorialCards extends StatelessWidget {
  const FeaturedMemorialCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 166,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SectionHeader(
              title: "Featured Memorial Cards",
              onSeeMorePressed: () {},
            ),
          ),
          const SizedBox(height: 13),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 30),
              itemCount: 5,
              scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                return ImageCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}

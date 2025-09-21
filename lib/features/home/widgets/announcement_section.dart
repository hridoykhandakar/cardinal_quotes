import 'package:cardinal_quotes/core/widgets/image_card.dart';
import 'package:cardinal_quotes/core/widgets/section_header.dart';
import 'package:flutter/material.dart';

class AnnouncementSection extends StatelessWidget {
  const AnnouncementSection({super.key});

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
              title: "Announcements",
              onSeeMorePressed: () {},
            ),
          ),
          const SizedBox(height: 13),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 15),
              child: ImageCard(width: double.infinity),
            ),
          ),
        ],
      ),
    );
  }
}

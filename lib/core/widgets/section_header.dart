import 'package:cardinal_quotes/core/widgets/see_more_button.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onSeeMorePressed;
  const SectionHeader({
    super.key,
    required this.title,
    required this.onSeeMorePressed,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: textTheme.titleSmall),
        SeeMoreButton(onPressed: onSeeMorePressed),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String actionLabel;

  const SectionHeader({
    super.key,
    required this.title,
    required this.actionLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineMedium),
        const Spacer(),
        Text(
          actionLabel,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: const Color(0xFF4A6FA5),
                fontWeight: FontWeight.w600,
              ),
        ),
      ],
    );
  }
}

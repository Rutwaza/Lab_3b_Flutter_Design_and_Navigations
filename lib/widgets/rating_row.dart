import 'package:flutter/material.dart';

class RatingRow extends StatelessWidget {
  final double rating;
  final int reviews;
  final Color? color;

  const RatingRow({
    super.key,
    required this.rating,
    required this.reviews,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final displayColor = color ?? const Color(0xFFF4A261);
    return Row(
      children: [
        const Icon(Icons.star, size: 14, color: Color(0xFFF4A261)),
        const SizedBox(width: 4),
        Text(
          rating.toStringAsFixed(1),
          style: TextStyle(
            color: displayColor,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          '($reviews)',
          style: TextStyle(
            color: displayColor.withOpacity(0.8),
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}

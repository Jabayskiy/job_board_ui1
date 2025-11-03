import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class BadgeChip extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;

  const BadgeChip({
    super.key,
    required this.text,
    this.color = const Color(0xFFEFF6FF),
    this.textColor = const Color(0xFF1D4ED8),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(text, style: Theme.of(context).textTheme.labelLarge?.copyWith(color: textColor)),
    );
  }
}

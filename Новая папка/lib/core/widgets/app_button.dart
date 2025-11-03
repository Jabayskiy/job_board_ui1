import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool filled;

  const AppButton({super.key, required this.text, this.onPressed, this.filled = true});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.labelLarge;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: filled ? Colors.white : AppColors.primary,
        backgroundColor: filled ? AppColors.primary : Colors.white,
        side: filled ? BorderSide.none : const BorderSide(color: AppColors.primary, width: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        elevation: filled ? 1 : 0,
      ),
      onPressed: onPressed,
      child: Text(text, style: style),
    );
  }
}

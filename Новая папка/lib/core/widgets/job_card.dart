import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'badge.dart';

class JobCard extends StatelessWidget {
  final String company;
  final String role;
  final String salary;
  final String location;
  final bool isBookmarked;
  final List<String> tags;
  final VoidCallback? onTap;

  const JobCard({
    super.key,
    required this.company,
    required this.role,
    required this.salary,
    required this.location,
    this.isBookmarked = false,
    this.tags = const [],
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 44, height: 44,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEDE9FE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.work_outline),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(company, style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.subtext)),
                      const SizedBox(height: 2),
                      Text(role, style: Theme.of(context).textTheme.titleLarge),
                    ],
                  ),
                ),
                Icon(isBookmarked ? Icons.bookmark : Icons.bookmark_border, color: AppColors.primary),
              ],
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8, runSpacing: 8,
              children: [
                BadgeChip(text: salary),
                BadgeChip(text: location, color: const Color(0xFFF1F5F9), textColor: const Color(0xFF334155)),
                ...tags.map((t) => BadgeChip(text: t, color: const Color(0xFFF1F5F9), textColor: const Color(0xFF334155))),
              ],
            )
          ],
        ),
      ),
    );
  }
}

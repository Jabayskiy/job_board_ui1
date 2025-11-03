import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/badge.dart';

class JobDetailsPage extends StatelessWidget {
  const JobDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width >= 800;
    final maxW = isWide ? 600.0 : double.infinity;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Details'),
        centerTitle: true,
        actions: const [Padding(padding: EdgeInsets.only(right: 12), child: Icon(Icons.bookmark_border))],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxW),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 56, height: 56,
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
                        Text('Pinterest', style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.subtext)),
                        const SizedBox(height: 2),
                        Text('iOS Engineer', style: Theme.of(context).textTheme.titleLarge),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 8,
                          children: const [
                            BadgeChip(text: '\$140k - \$180k'),
                            BadgeChip(text: 'San Francisco, CA', color: Color(0xFFF1F5F9), textColor: Color(0xFF334155)),
                            BadgeChip(text: 'Full-time', color: Color(0xFFF1F5F9), textColor: Color(0xFF334155)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 16.h),
              const Divider(),
              SizedBox(height: 12.h),
              Text('Job Description', style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: 8.h),
              Text(
                'We are looking for an experienced iOS Engineer to help build delightful product experiences. '
                'You will collaborate with designers and product managers to deliver high-quality features.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 16.h),
              Text('Responsibilities', style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: 8.h),
              ...[
                'Build and maintain scalable iOS components.',
                'Collaborate with cross-functional teams.',
                'Write clean, testable code.',
              ].map((e) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('•  '),
                        Expanded(child: Text(e)),
                      ],
                    ),
                  )),
              SizedBox(height: 20.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                ),
                onPressed: () {},
                child: const Text('Apply Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

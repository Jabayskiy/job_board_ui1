import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/job_card.dart';

class JobListPage extends StatelessWidget {
  const JobListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width >= 800;
    final maxW = isWide ? 600.0 : double.infinity;

    final jobs = [
      {
        'company': 'Google LLC',
        'role': 'Product Designer',
        'salary': '\$120k - \$160k',
        'location': 'Mountain View, CA',
        'tags': ['Remote', 'Full-time'],
      },
      {
        'company': 'Facebook',
        'role': 'UX Researcher',
        'salary': '\$90k - \$130k',
        'location': 'Menlo Park, CA',
        'tags': ['On-site', 'Contract'],
      },
      {
        'company': 'Pinterest',
        'role': 'iOS Engineer',
        'salary': '\$140k - \$180k',
        'location': 'San Francisco, CA',
        'tags': ['Hybrid', 'Full-time'],
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Jobs'),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxW),
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            itemCount: jobs.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final j = jobs[index];
              return JobCard(
                company: j['company'] as String,
                role: j['role'] as String,
                salary: j['salary'] as String,
                location: j['location'] as String,
                tags: (j['tags'] as List<String>),
                onTap: () => context.go('/details'),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            padding: EdgeInsets.symmetric(vertical: 14.h),
          ),
          icon: const Icon(Icons.tune),
          onPressed: () {},
          label: const Text('Filters'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../core/widgets/app_button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width >= 800;
    final maxW = isWide ? 560.0 : double.infinity;

    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxW),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120.w,
                  height: 120.w,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFF6FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Icon(Icons.work, size: 48),
                ),
                SizedBox(height: 24.h),
                Text('Find Your Dream Job', textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium),
                SizedBox(height: 8.h),
                Text(
                  'Explore thousands of opportunities tailored to your skills.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Expanded(child: AppButton(text: 'Sign up', onPressed: () => context.go('/list'))),
                    SizedBox(width: 12.w),
                    Expanded(child: AppButton(text: 'Sign in', onPressed: () => context.go('/list'), filled: false)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

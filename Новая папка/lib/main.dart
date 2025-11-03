import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/theme/app_theme.dart';
import 'features/splash/splash_page.dart';
import 'features/job_list/job_list_page.dart';
import 'features/job_details/job_details_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const JobBoardApp());
}

class JobBoardApp extends StatelessWidget {
  const JobBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashPage(),
        ),
        GoRoute(
          path: '/list',
          builder: (context, state) => const JobListPage(),
        ),
        GoRoute(
          path: '/details',
          builder: (context, state) => const JobDetailsPage(),
        ),
      ],
    );

    return ScreenUtilInit(
      designSize: const Size(375, 812), // iPhone 11/12/13 baseline
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Job Board UI',
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: ThemeMode.system,
          routerConfig: router,
        );
      },
    );
  }
}

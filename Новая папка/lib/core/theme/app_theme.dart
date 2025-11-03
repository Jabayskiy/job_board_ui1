import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData get light {
    final base = ThemeData.light(useMaterial3: true);
    return base.copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
      scaffoldBackgroundColor: AppColors.bg,
      textTheme: GoogleFonts.interTextTheme(base.textTheme).copyWith(
        headlineLarge: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 32),
        headlineMedium: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 24),
        titleLarge: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 20),
        titleMedium: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16),
        bodyLarge: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 16),
        bodyMedium: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 14),
        labelLarge: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 14),
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.bg,
        foregroundColor: AppColors.black,
      ),
      dividerColor: AppColors.border,
    );
  }

  static ThemeData get dark {
    final base = ThemeData.dark(useMaterial3: true);
    return base.copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary, brightness: Brightness.dark),
      scaffoldBackgroundColor: const Color(0xFF0B1220),
      textTheme: GoogleFonts.interTextTheme(base.textTheme),
      appBarTheme: const AppBarTheme(
        elevation: 0,
      ),
      dividerColor: const Color(0xFF1E293B),
    );
  }
}

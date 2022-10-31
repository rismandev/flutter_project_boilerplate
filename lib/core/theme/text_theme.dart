import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Configuration for [TextTheme]
///
/// This [TextTheme] using format :
///
/// [displayLarge], [displayMedium] & [displaySmall]
/// [headlineLarge], [headlineMedium] & [headlineSmall]
/// [titleLarge], [titleMedium] & [titleSmall]
/// [bodyLarge], [bodyMedium] & [bodySmall]
/// [labelLarge], [labelMedium] & [labelSmall]
TextTheme getTextTheme() {
  return TextTheme(
    /// size => 20
    displaySmall: GoogleFonts.actor(fontSize: 20, fontWeight: FontWeight.w700),

    /// size => 24
    displayMedium: GoogleFonts.actor(fontSize: 24, fontWeight: FontWeight.w700),

    /// size => 32
    displayLarge: GoogleFonts.actor(fontSize: 32, fontWeight: FontWeight.w700),

    /// size => 14
    headlineSmall: GoogleFonts.actor(fontSize: 14, fontWeight: FontWeight.w600),

    /// size => 18
    headlineMedium:
        GoogleFonts.actor(fontSize: 18, fontWeight: FontWeight.w600),

    /// size => 22
    headlineLarge: GoogleFonts.actor(fontSize: 22, fontWeight: FontWeight.w600),

    /// size => 12
    titleSmall: GoogleFonts.actor(fontSize: 12, fontWeight: FontWeight.w600),

    /// size => 16
    titleMedium: GoogleFonts.actor(fontSize: 16, fontWeight: FontWeight.w600),

    /// size => 20
    titleLarge: GoogleFonts.actor(fontSize: 20, fontWeight: FontWeight.w600),

    /// size => 10
    bodySmall: GoogleFonts.actor(fontSize: 10, fontWeight: FontWeight.normal),

    /// size => 14
    bodyMedium: GoogleFonts.actor(fontSize: 14, fontWeight: FontWeight.normal),

    /// size => 18
    bodyLarge: GoogleFonts.actor(fontSize: 18, fontWeight: FontWeight.normal),

    /// size => 12
    labelSmall: GoogleFonts.actor(fontSize: 12, fontWeight: FontWeight.normal),

    /// size => 16
    labelMedium: GoogleFonts.actor(fontSize: 16, fontWeight: FontWeight.normal),

    /// size => 20
    labelLarge: GoogleFonts.actor(fontSize: 20, fontWeight: FontWeight.normal),
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hermgen/features/auth/start_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HermGen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue[100]!),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.raleway(
            fontSize: 52,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: GoogleFonts.raleway(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: GoogleFonts.raleway(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: GoogleFonts.nunitoSans(
            fontSize: 18,
            fontWeight: FontWeight.w200,
          ),
          bodyMedium: GoogleFonts.nunitoSans(fontSize: 14),
          bodySmall: GoogleFonts.nunitoSans(fontSize: 10),
          labelLarge: GoogleFonts.nunitoSans(
            fontSize: 22,
            fontWeight: FontWeight.w200,
          ),
          labelMedium: GoogleFonts.nunitoSans(
            fontSize: 15,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
      home: StartPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', height: 100, width: 100),
            Text(
              'HermGen',
              style: GoogleFonts.raleway(
                fontSize: 52,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Beautiful eCommerce App for you online store',
              style: GoogleFonts.nunitoSans(
                fontSize: 19,
                fontWeight: FontWeight.w300,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 90),
            FilledButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                textStyle: GoogleFonts.nunitoSans(
                  fontSize: 19,
                  fontWeight: FontWeight.w300,
                ),
              ),
              child: Text("Let's get started"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'I already have an account',
                  style: GoogleFonts.nunitoSans(fontSize: 16),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

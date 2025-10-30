import 'package:flutter/material.dart';

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
            Text('HermGen', style: Theme.of(context).textTheme.titleLarge),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Beautiful eCommerce App for you online store',
                style: Theme.of(context).textTheme.bodyLarge,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 90),
            FilledButton(
              onPressed: () {},

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                backgroundColor: Theme.of(context).colorScheme.primary,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: Text("Let's get started"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'I already have an account',
                  style: Theme.of(context).textTheme.labelMedium,
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

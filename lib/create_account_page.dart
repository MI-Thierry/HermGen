import 'package:flutter/material.dart';

class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({super.key});

  final InputBorder _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('assets/background.png'),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 60),
            child: Column(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Create Account',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontSize: 50),
                ),
                Image.asset('assets/logo.png', height: 100, width: 100),
                SizedBox(height: 50),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: const Text('Email'),
                    border: _border,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    label: const Text('Password'),
                    border: _border,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    label: const Text('Phone Number'),
                    border: _border,
                  ),
                ),
                SizedBox(height: 40),
                FilledButton(
                  onPressed: () {},

                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(16),
                    ),
                    textStyle: Theme.of(context).textTheme.labelLarge,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: Text('Done'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(16),
                    ),
                    textStyle: Theme.of(context).textTheme.labelLarge,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

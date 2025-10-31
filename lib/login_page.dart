import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _border = OutlineInputBorder(borderRadius: BorderRadius.circular(8));
  final _validEmailRegex = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  final _strongPasswordRegex =
      r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@\(\)!\%*?&]).{8,}$";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/login_page_background.png'),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 60),
            child: Column(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text('Login', style: Theme.of(context).textTheme.titleLarge),
                Text(
                  'Good to see back!',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 50),
                Form(
                  key: _formKey,
                  child: Column(
                    spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextFormField(
                        validator: (email) {
                          if (email == null || email.isEmpty) {
                            return 'Please enter you email';
                          } else if (!RegExp(
                            _validEmailRegex,
                          ).hasMatch(email)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          label: const Text('Email'),
                          border: _border,
                        ),
                      ),
                      TextFormField(
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return 'Please enter you password';
                          } else if (!RegExp(
                            _strongPasswordRegex,
                          ).hasMatch(password)) {
                            return 'Please use strong password.';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          label: const Text('Password'),
                          border: _border,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(0),
                          ),
                          textStyle: Theme.of(context).textTheme.labelMedium,
                          padding: EdgeInsets.all(0),
                        ),
                        child: const Text('Forget password.'),
                      ),
                      SizedBox(height: 40),
                      FilledButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Processing the data.'),
                              ),
                            );
                          }
                        },

                        style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(16),
                          ),
                          textStyle: Theme.of(context).textTheme.labelLarge,
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.primary,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                        ),
                        child: const Text('Login'),
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
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                        ),
                        child: const Text('Cancel'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

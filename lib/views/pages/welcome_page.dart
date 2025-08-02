import 'package:flutter/material.dart';
import 'package:my_new_flutterapp/views/pages/login_page.dart';
import 'package:my_new_flutterapp/views/pages/onboarding_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Load a Lottie file from your assets
            Lottie.asset('assets/lotties/welcome.json', height: 400.0),
            //Fitted Box for Login
            const FittedBox(
              child: Text(
                'Consonant',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 4.0,
                ),
              ),
            ),
            //Sized Box
            const SizedBox(height: 20.0),
            //Register Button
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return OnboardingPage();
                    },
                  ),
                );
              },
              child: const Text('Get Started'),
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 45.0),
              ),
            ),
            //Login Button
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage(
                        title: 'Login',
                      );
                    },
                  ),
                );
              },
              child: const Text('Login'),
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 45.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

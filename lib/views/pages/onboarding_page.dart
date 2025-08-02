import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_new_flutterapp/data/constants.dart';
import 'package:my_new_flutterapp/views/pages/login_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            //Lottie
            Lottie.asset(
              'assets/lotties/home3d.json',
              height: 400,
            ),
            // Email Sizedbox
            SizedBox(
              height: 20.0,
            ),
            const Text(
              'Welcome, this is the onboarding screen, you need to accept with our terms and conditions.',
              style: MyTextStyle.descriptionText,
            ),
            //sizedbox
            SizedBox(height: 10.0),
            //Login Button
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage(
                        title: 'Login',
                      );
                    },
                  ),
                );
              },
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 45.0),
              ),
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}

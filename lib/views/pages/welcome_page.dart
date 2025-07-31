import 'package:flutter/material.dart';
import 'package:my_new_flutterapp/views/pages/widget_tree.dart';
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
            Lottie.asset('assets/lotties/welcome.json'),
            //Login Text
            const Text(
              'Consonant App',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0,
              ),
            ),

            //Login Button
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const WidgetTree();
                    },
                  ),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_new_flutterapp/views/widgets/hero_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
    required this.title,
  });
  final String title;

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
              'assests/lotties/home3d.json',
              height: 400,
            ),
            //HeroWidget
            HeroWidget(title: title),
            // Email Sizedbox
            SizedBox(
              height: 20.0,
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
                      return LoginPage(title: title);
                    },
                  ),
                );
              },
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 45.0),
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

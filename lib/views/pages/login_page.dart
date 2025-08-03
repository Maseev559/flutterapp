import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_new_flutterapp/views/pages/widget_tree.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController(text: '123');
  TextEditingController controllerPassword = TextEditingController(text: '456');
  String correctEmail = '123';
  String correctPassword = '456';
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   print('Login Successful');
  //   super.initState();
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Media Query
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20.0),
            //Layoutbuilder to return FractionallySizedBox to make it responsive
            child: LayoutBuilder(
              builder: (context, BoxConstraints constraints) {
                return FractionallySizedBox(
                  //Used Widthfactor + constraints for the
                  //  widthFactor: constraints.maxWidth > 500 ? 0.5 : 1.0,
                  // Using Media Query here instead of constraints
                  widthFactor: widthScreen > 500 ? 0.5 : 1.0,
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
                      //Textfield
                      TextField(
                        controller: controllerEmail,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45.0),
                          ),
                        ),
                        onEditingComplete: () {
                          setState(() {});
                        },
                      ),

                      // Password Sizedbox
                      SizedBox(
                        height: 10.0,
                      ),
                      //Textfield
                      TextField(
                        controller: controllerPassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45.0),
                          ),
                        ),
                        onEditingComplete: () {
                          setState(() {});
                        },
                      ),

                      //sizedbox
                      SizedBox(height: 10.0),
                      //Login Button
                      FilledButton(
                        onPressed: () {
                          correctDetails();
                        },
                        style: FilledButton.styleFrom(
                          minimumSize: Size(double.infinity, 45.0),
                        ),
                        child: Text('Login'),
                      ),
                    ],
                  ),
                );
              },
            )),
      ),
    );
  }

  void correctDetails() {
    if (correctEmail == controllerEmail.text &&
        correctPassword == controllerPassword.text) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const WidgetTree();
          },
        ),
        (route) => false,
      );
    } else {
      print('Wrong username or password');
    }
  }
}

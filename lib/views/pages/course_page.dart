import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_new_flutterapp/views/widgets/hero_widget.dart';

import 'package:http/http.dart' as http;

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }

  void getData() async {
    var url = Uri.https(
      'bored-api.appbrewery.com',
      '/random',
    );

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      //Use the convert library to decode the JSON response. So import 'dart:convert' as convert;.
      //  convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['activity'];
      print('Number of books about http: $itemCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              HeroWidget(
                title: 'Course',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

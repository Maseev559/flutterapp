import 'package:flutter/material.dart';
import 'package:my_new_flutterapp/data/constants.dart';
import 'package:my_new_flutterapp/views/pages/course_page.dart';
import 'package:my_new_flutterapp/views/widgets/container_widget.dart';
import 'package:my_new_flutterapp/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      MyValue.basicLayout,
      MyValue.basicLayout1,
      MyValue.basicLayout2,
      MyValue.basicLayout3,
      MyValue.basicLayout4,
      MyValue.basicLayout5,
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(
              title: 'Home',
              nextPage: CoursePage(),
            ),

            //Container from container_widget.dart
            //Container shortcut
            ...List.generate(
              6,
              (index) {
                return ContainerWidget(
                  title: list.elementAt(index),
                  description: 'This is a normal description',
                );
              },
            ),
            //List long process

            // const ContainerWidget(
            //   title: 'Basic Layout',
            //   description: 'This is a normal description',
            // ),
            // const ContainerWidget(
            //   title: 'Basic Layout',
            //   description: 'This is a normal description',
            // ),
          ],
        ),
      ),
    );
  }
}

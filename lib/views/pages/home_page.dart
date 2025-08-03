import 'package:flutter/material.dart';
import 'package:my_new_flutterapp/views/widgets/container_widget.dart';
import 'package:my_new_flutterapp/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(
              title: 'Home',
            ),

            //Container from container_widget.dart
            //Container shortcut
            ...List.generate(
              3,
              (index) {
                return const ContainerWidget(
                  title: 'Basic Layout',
                  description: 'This is a normal description',
                );
              },
            ),
            //List long process

            const ContainerWidget(
              title: 'Basic Layout',
              description: 'This is a normal description',
            ),
            const ContainerWidget(
              title: 'Basic Layout',
              description: 'This is a normal description',
            ),
          ],
        ),
      ),
    );
  }
}

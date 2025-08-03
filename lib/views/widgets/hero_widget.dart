import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key,
    required this.title,
    this.nextPage,
  });
  final String title;
  final Widget? nextPage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage != null
          ? () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextPage!;
                },
              ));
            }
          : null,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Hero(
            tag: 'Hero1',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/images/newbg.jpg',
                // color: Colors.teal,
                // colorBlendMode: BlendMode.darken,
              ),
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 4.0,
            ),
          ),
        ],
      ),
    );
  }
}

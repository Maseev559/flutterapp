import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //Expaned & Flexible usually used inside a Row or Column
          // Expanded(
          //   child: Container(
          //     color: Colors.amberAccent,
          //   ),
          // ),
          // Expanded(
          // //  flex: 2,
          //   child: Container(
          //     color: Colors.red,
          //   ),
          // ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.greenAccent,
                  height: 20.0,
                  child: Text('Text Here'),
                ),
              ),
              //Difference In Flexible And Expanded can't be wrapped with SingleChilddScrollView
              //Flexible occupies space even if not visible and shrink texts space
              Flexible(
                child: Container(
                  color: Colors.amber,
                  height: 20.0,
                  child: Text('Text Here'),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Flexible(
                child: Container(
                  color: Colors.greenAccent,
                  height: 20.0,
                  child: Text('Text Here'),
                ),
              ),
              //Difference In Flexible And Expanded
              //Flexible occupies space even if not visible and shrink texts space
              Expanded(
                child: Container(
                  color: Colors.amber,
                  height: 20.0,
                  child: Text('Text Here'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WidgetTest1 extends StatelessWidget {
  const WidgetTest1({super.key});

  

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('test 1'),
         
        ],
      ),
    );
  }


}
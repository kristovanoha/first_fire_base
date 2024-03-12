import 'package:flutter/material.dart';

class WidgetTest2 extends StatelessWidget {
  const WidgetTest2({super.key});

  

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('test2'),
         
        ],
      ),
    );
  }


}
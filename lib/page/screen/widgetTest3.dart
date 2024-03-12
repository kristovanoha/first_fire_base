import 'package:flutter/material.dart';

class WidgetTest3 extends StatelessWidget {
  const WidgetTest3({super.key});

  

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('test3'),
         
        ],
      ),
    );
  }


}
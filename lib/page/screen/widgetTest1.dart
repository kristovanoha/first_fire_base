import 'package:flutter/material.dart';

class WidgetTest1 extends StatelessWidget {
  const WidgetTest1({super.key});

  @override
  Widget build(BuildContext context) {
    // Získání aktuální šířky obrazovky
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('test 1 a'),
          Text('Aktuální šířka: $screenWidth px') // Výpis aktuální šířky
        ],
      ),
    );
  }
}

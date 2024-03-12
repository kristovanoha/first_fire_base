import 'package:first_fire_base/models/languageProvider.dart';
import 'package:first_fire_base/page/navigationHome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
      child: Consumer<LanguageProvider>(
        builder: (context, languageProvider, _) {
          return MaterialApp(
            title: 'FirstFireBase',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
    
            // supportedLocales: const [
            //   Locale('en', ''),
            //   Locale('cs', ''),
            //   Locale('de', ''),
            //   Locale('sk', ''),
            // ],
            home: const NavigationHome(),
          );
        },
      ),
    );
  }
}

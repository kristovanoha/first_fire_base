import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class WidgetTest1 extends StatefulWidget {
  const WidgetTest1({super.key});

  @override
  _WidgetTest1State createState() => _WidgetTest1State();
}

class _WidgetTest1State extends State<WidgetTest1> {
 // late double Pro zobrazení podrobnějších informací o těchto varováních můžete kompilovat s příslušnými parametry -Xlint:deprecation a -Xlint:unchecked. Ty vám poskytnou podrobnosti o tom, kde přesně v kódu došlo k použití zastaralých nebo nekontrolovaných operací, což vám umožní přijmout patřičná opatření k jejich opravě.screenWidth;
//double = 0;

// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );

  @override
  void initState() {
    super.initState();
    print("start");
  _fireBaseLoad();
    // Nastavení šířky obrazovky
   // screenWidth = MediaQuery.of(context).size.width;
  }

  void _fireBaseLoad() {
    print('LOAD fireBase');
    // Firebase.initializeApp();
     FirebaseFirestore db = FirebaseFirestore.instance;

    DocumentReference documentReference = db.collection("books").doc("YEmhnEriVyn00Nr9b3sj");

    documentReference.get().then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        // Data existují, můžete s nimi pracovat
        Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
        // Tady můžete data použít, například:
        print("Autor: ${data['author']}, Titul: ${data['title']}");
      } else {
        // Dokument neexistuje
        print("Dokument nebyl nalezen");
      }
    }).catchError((error) {
      // Zpracování chyby
      print("Došlo k chybě při načítání dokumentu: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    // Není nutné získávat šířku obrazovky zde, protože je to již v `initState`
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('test 1 a'),
          Text('Aktuální šířka:  px'), // Výpis aktuální šířky
        ],
      ),
    );
  }
}

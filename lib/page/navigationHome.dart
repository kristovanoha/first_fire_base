
import 'package:first_fire_base/constants/app_colors.dart';
import 'package:first_fire_base/page/screen/widgetTest1.dart';
import 'package:first_fire_base/page/screen/widgetTest2.dart';
import 'package:first_fire_base/page/screen/widgetTest3.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';



class NavigationHome extends StatefulWidget {
  const NavigationHome({super.key});

  @override
  _NavigationHomeState createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const WidgetTest1(),
    const WidgetTest2(),
    const WidgetTest3()
  ];

  String getAppBarTitle(int index) {
    switch (index) {
      case 0:
        return "prvni";
      case 1:
        return "druha";
      case 2:
        return "tret";
     
      default:
        return '';
    }
  }

  void onTabTapped(int index) {
    //BuildContext context = contextBulder;

    //Provider.of<LanguageProvider>(context, listen: false).
    setState(() {
      _currentIndex = index;
    });
  }

  void _navigateToBackup() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const WidgetTest1()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getAppBarTitle(_currentIndex)),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            height: 1.0,
            color: const Color.fromARGB(255, 141, 116, 70)
          ),
        ),
        backgroundColor:
            Colors.transparent, // Nastav transparentní, aby byl vidět gradient
        elevation: 0, // Odstraň stín, pokud chceš, aby byl gradient čistší
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.topMenu,
                AppColors.topMenu2
              ], // Zde definuj své barvy gradientu
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: _navigateToBackup,
          ),
        ],
      ),
      body: _children[_currentIndex],
bottomNavigationBar: Container(
  decoration: BoxDecoration(
    border: Border(
      top: BorderSide(color: Colors.grey.shade300, width: 2.0), // Nastavení barvy a tloušťky horního okraje
    ),
  ),
  child: BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.bottomMenu,
    unselectedItemColor: AppColors.iconColorUnselect,
    selectedItemColor: AppColors.iconColorSelect,
    onTap: onTabTapped,
    currentIndex: _currentIndex,
    items: [
      BottomNavigationBarItem(
        icon: const Icon(Icons.check_box),
        label: "1",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.table_chart_outlined),
        label: "2",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.bar_chart),
        label: "3",
      ),
    
    ],
  ),
),


    );
  }
}

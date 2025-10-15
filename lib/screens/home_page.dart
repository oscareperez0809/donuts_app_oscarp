import 'package:flutter/material.dart';
import 'package:donuts_app/utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    MyTab(iconPath: 'lib/icons/donut.png', iconName: 'Donut'),
    MyTab(iconPath: 'lib/icons/burger.png', iconName: 'Burger'),
    MyTab(iconPath: 'lib/icons/smoothie.png', iconName: 'Smoothie'),
    MyTab(iconPath: 'lib/icons/pancakes.png', iconName: 'Pancakes'),
    MyTab(iconPath: 'lib/icons/pizza.png', iconName: 'Pizza'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // icono de la izquierda
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          // icono de la derecha
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person, color: Colors.grey[800]),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 24.0, bottom: 16),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            TabBar(tabs: myTabs),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('Donut Page')),
                  Center(child: Text('Burger Page')),
                  Center(child: Text('Smoothie Page')),
                  Center(child: Text('Pancake Page')),
                  Center(child: Text('Pizza Page')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

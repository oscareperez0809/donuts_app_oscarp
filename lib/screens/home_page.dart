import 'package:flutter/material.dart';
import 'package:donuts_app/utils/my_tab.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //donut
    const MyTab(iconPath: 'lib/icons/donut.png', iconName: 'Donut'),
    //burger
    const MyTab(iconPath: 'lib/icons/burger.png', iconName: 'Burger'),
    //smoothie
    const MyTab(iconPath: 'lib/icons/smoothie.png', iconName: 'Smoothie'),
    //pancake
    const MyTab(iconPath: 'lib/icons/pancakes.png', iconName: 'Pancakes'),
    //pizza
    const MyTab(iconPath: 'lib/icons/pizza.png', iconName: 'Pizza'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          //icono de la izquierda
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          //icono de la derecha
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Column(
          children: [
            //texto principal
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
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
                  )
                ],
              ),
            ),

            //pestañas (TabBar)
            TabBar(tabs: myTabs),

            //contenido de pestañas tabbar view
            //carrito car
          ],
        ),
      ),
    );
  }
}

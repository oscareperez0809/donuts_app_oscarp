import 'package:flutter/material.dart';
import 'package:donuts_app_8sc/utils/my_tab.dart';

// importa los archivos de cada pestaña (para mostrar su contenido)
import 'package:donuts_app_8sc/tab/donut_tab.dart';
import 'package:donuts_app_8sc/tab/burguer_tab.dart';
import 'package:donuts_app_8sc/tab/smoothie_tab.dart';
import 'package:donuts_app_8sc/tab/pancake_tab.dart';
import 'package:donuts_app_8sc/tab/pizza_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Lista de pestañas con íconos personalizados
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
      // número de pestañas
      length: myTabs.length,

      child: Scaffold(
        // AppBar de la parte superior
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0, // sin sombra

          // icono de la izquierda (menú)
          leading: Icon(Icons.menu, color: Colors.grey[800]),

          // icono de la derecha (perfil)
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person, color: Colors.grey[800]),
            ),
          ],
        ),

        // cuerpo principal
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // texto principal superior
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
                  ),
                ],
              ),
            ),

            // pestañas (TabBar)
            TabBar(
              tabs: myTabs,
              labelColor: Colors.pink, // color activo
              unselectedLabelColor: Colors.grey, // color inactivo
              indicatorColor: Colors.pink, // línea inferior
              isScrollable: true, // permite desplazamiento
            ),

            // contenido de las pestañas (TabBarView)
            Expanded(
              child: TabBarView(
                // aquí van las páginas de cada pestaña
                children: [
                  DonutTab(),   // pestaña 1
                  BurgerTab(),  // pestaña 2
                  SmoothieTab(), // pestaña 3
                  PancakeTab(), // pestaña 4
                  PizzaTab(),   // pestaña 5
                ],
              ),
            ),

            // carrito de compras (opcional, puedes implementarlo después)
          ],
        ),
      ),
    );
  }
}

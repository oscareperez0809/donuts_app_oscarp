import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:donuts_app/screens/home_page.dart';
=======
import 'screens/home_page.dart';
>>>>>>> 189d8ba73ad086d3cee19000ce1b61b257cbc49d

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}

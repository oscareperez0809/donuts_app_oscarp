import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});

  //list of donuts
  final List donutsOnSale = [
    [
      'Chocolate',
      '100',
      Colors.brown,
      'lib/images/chocolate_donut.png',
      'Starbucks',
    ],
    [
      'Strawberry',
      '90',
      Colors.pink,
      'lib/images/strawberry_donut.png',
      'Dunkin',
    ],
    [
      'Ice Cream',
      '80',
      Colors.blue,
      'lib/images/icecream_donut.png',
      'Krispy Kreme',
    ],
    ['Grape', '70', Colors.amber, 'lib/images/grape_donut.png', 'Oxxo'],
  ];

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('DonutTab'));
  }
}

import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutflavor;
  final String donutprice;
  final dynamic donutcolor;
  final String donutimage;
  final String donutsupplier;
  const DonutTile({
    super.key,
    required this.donutflavor,
    required this.donutprice,
    this.donutcolor,
    required this.donutimage,
    required this.donutsupplier,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutcolor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutcolor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 18,
                  ),
                  child: Text(
                    '\$$donutprice',
                    style: TextStyle(
                      color: donutcolor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            //Imagen de la dona
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Image.asset(donutimage),
            ),
            //Nombre de la dona
            Text(
              donutflavor,
              style: TextStyle(
                color: donutcolor[800],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            //Tienda de la dona
            Text(donutsupplier, style: TextStyle(color: Colors.grey[600])),
            //Botones
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Favorito
                  Icon(Icons.favorite, color: Colors.pink[400]),
                  //Agregar
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

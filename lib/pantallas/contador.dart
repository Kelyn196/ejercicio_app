import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  @override
  int clickcontador = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contador!.')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Clicks!.'),

            Text(
              '$clickcontador',
              style: TextStyle(fontSize: 150, fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment:
            MainAxisAlignment.end, // Alinea los botones a la derecha
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickcontador++;
              });
            },
            child: Icon(Icons.plus_one),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickcontador--;
              });
            },
            child: Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickcontador = 0; // Resetea el contador
              });
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
      //floatingActionButton: FloatingActionButton(
      //onPressed: () {
      //clickcontador++;
      //setState(() {});
      //},
      //child: Icon(Icons.plus_one),
      //),
    );
  }
}

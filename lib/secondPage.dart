import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

int generateRandomNumber() {
  var random = new Random();
  return (random.nextInt(1000));
}

class _SecondPageState extends State<SecondPage> {
  int numero = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Página 2')),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.white,
              ],
            ),
          ),
          child: Center(
              child: Column(
            children: [
              Container(
                height: 40,
              ),
              Text(
                "Genere numero random",
                style: GoogleFonts.sourceSansPro(
                    color: Colors.purple,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 30,
              ),
              Text(
                "$numero",
                style: GoogleFonts.sourceSansPro(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Container(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () => {
                  numero = generateRandomNumber(),
                  setState(() {}),
                },
                child: Text('Generar', style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                  Navigator.pop(context, numero);
                },
                child: Text(
                  "Guardar",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

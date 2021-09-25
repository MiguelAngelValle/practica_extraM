import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:practica_extra/secondPage.dart';
import 'package:practica_extra/thirdPage.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

String pag3Value = "Adios";
var _controller = TextEditingController();
var result;
var face;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tarea 1')),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Text("BIENVENIDOS",
              style: GoogleFonts.pacifico(color: Colors.grey, fontSize: 40),
              textAlign: TextAlign.center),
          Container(
            height: 30,
          ),
          Image.asset('assets/Dash Dart PNG  - white.png'),
          Container(
            height: 40,
          ),
          Text("Seleccione la accion a realizar:",
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          Container(
            height: 40,
          ),
          //botones::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: Text("Pagina 2", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Ingrese datos"),
                          content: TextField(
                            controller: _controller,
                            keyboardType: TextInputType.text,
                            decoration:
                                InputDecoration(labelText: "Ingrese palabra"),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: Text("Cancelar"),
                              onPressed: () {
                                Navigator.of(context).pop(context);
                                setState(() {});
                              },
                            ),
                            TextButton(
                              child: Text('Aceptar'),
                              onPressed: () async {
                                Navigator.of(context).pop();
                                result = await Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => SecondPage(),
                                  ),
                                );
                                setState(() {});
                              },
                            )
                          ],
                        );
                      });
                  setState(() {});
                },
              ),
              MaterialButton(
                  child:
                      Text("Pagina 3", style: TextStyle(color: Colors.white)),
                  onPressed: () async {
                    face = await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ThirdPage(),
                      ),
                    );
                    setState(() {});
                  },
                  color: Colors.blue),
            ],
          ),
          Container(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text("Pg.2 => ${_controller.text}${result ?? ''}")],
          ),
          Container(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text("Pg.3 => ${face ?? ''}")],
          )
        ],
      ),
    );
  }
}

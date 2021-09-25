import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Página 3")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaterialButton(
            child: Text('◔◡◔'),
            color: Colors.blue,
            onPressed: () {
              Navigator.pop(context, '◔◡◔');
              setState(() {});
            },
          ),
          MaterialButton(
            child: Text('ʕ•́ᴥ•̀ʔ'),
            color: Colors.blue,
            onPressed: () {
              Navigator.pop(context, 'ʕ•́ᴥ•̀ʔ');
              setState(() {});
            },
          ),
          MaterialButton(
            child: Text('ㆆ_ㆆ'),
            color: Colors.blue,
            onPressed: () {
              Navigator.pop(context, 'ㆆ_ㆆ');
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

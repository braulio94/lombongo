import 'package:flutter/material.dart';
import 'package:lombongo/components/alert.dart';
class Renda extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RendaState();
  }
}

class _RendaState extends State<Renda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Renda'),
        backgroundColor: Colors.green,
        centerTitle: false,
        elevation: 2.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              //Navigator.pop(context, MaterialPageRoute(builder: (context) => AlertComponents()));
              //Navigator.pop(context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              //chamar o alert dialog
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Adicionar"),
                        content: Container(
                          height: 180.0,
                          child: AlertComponents(),
                        ),
                      ));
            },
          ),          
        ],
      ),
    );
  }
}

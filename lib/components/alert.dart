import 'package:flutter/material.dart';
import 'package:lombongo/pages/renda.dart';
import 'package:lombongo/pages/despesa.dart';
import 'package:lombongo/pages/categoria.dart';

class AlertComponents extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AlertComponentsState();
  }
}

class _AlertComponentsState extends State<AlertComponents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tab(text: 'Renda', icon: Icon(Icons.attach_money)),
        Tab(text: 'Despesa', icon: Icon(Icons.money_off)),
        Tab(text: 'Categoria', icon: Icon(Icons.dashboard)),
      ].map((menu){
        return Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(1.0),
              child: menu.icon,
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push<int>(context, MaterialPageRoute(builder: (context){
                    switch(menu.text){
                      case 'Renda':
                        return Renda();
                      case 'Despesa':
                        return Despesa();
                      case 'Categoria':
                        return Categoria();
                    }
                  })).then((value){
                    print('Value is $value');
                  });
                },
                child: Text(menu.text),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}

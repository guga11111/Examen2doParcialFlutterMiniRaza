import 'package:flutter/material.dart';

import 'menu.dart';

class GeneratePage extends StatefulWidget {
  @override
  _GeneratePageState createState() => _GeneratePageState();
}

class _GeneratePageState extends State<GeneratePage> {
  String _nombre;
  String _edad;
  String _estado;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text("N",
              style: DefaultTextStyle.of(context)
                  .style
                  .apply(fontSizeFactor: 2.0)),
          Divider(
            thickness: 0,
            indent: 1000,
            endIndent: 1000,
          ),
          _nombreInput(),
          Divider(
            thickness: 0,
            indent: 1000,
            endIndent: 1000,
          ),
          Divider(
            thickness: 0,
            indent: 1000,
            endIndent: 1000,
          ),
          _finInput(),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MenuPage()));
            },
            child: Text('Random'),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100)),
          )
        ],
      )),
    );
  }

  Widget _nombreInput() {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          hintText: 'Inicio',
          labelText: 'Inicio',
          helperText: 'Ingresa tu numero de inicio',
          icon: Icon(Icons.north_rounded),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _finInput() {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          hintText: 'Fin',
          labelText: 'Fin',
          helperText: 'Ingresa tu numero final',
          icon: Icon(Icons.south_rounded),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }
}

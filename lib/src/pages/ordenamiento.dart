import 'package:flutter/material.dart';

import 'menu.dart';

class OrdenamientoPage extends StatefulWidget {
  @override
  _OrdenamientoPageState createState() => _OrdenamientoPageState();
}

class _OrdenamientoPageState extends State<OrdenamientoPage> {
  String _nombre;
  String _r1 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text(_r1,
              style: DefaultTextStyle.of(context)
                  .style
                  .apply(fontSizeFactor: 1.0, color: Colors.blueAccent)),
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
          ElevatedButton(
            onPressed: () => cambiarOrden(),
            child: Text('Ordenar'),
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
          hintText: 'Nombre',
          labelText: 'Nombre',
          helperText: 'Ingresa tu nombre',
          icon: Icon(Icons.account_circle),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  cambiarOrden() {
    var nombre = _nombre;
    var aux = List(nombre.length);
    var palabra = "";
    for (var i = 0; i < nombre.length; i++) {
      aux[i] = nombre[i];
    }
    aux.sort();
    for (var i = 0; i < nombre.length; i++) {
      palabra = palabra + aux[i].toString();
    }
    print(palabra);
    setState(() {
      _r1 = palabra;
    });
  }
}

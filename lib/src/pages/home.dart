import 'package:examen_2doparcial/src/routes/routes.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _nombre = '';
  int _edad = 0;
  String _estado = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
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
          _edadInput(),
          Divider(
            thickness: 0,
            indent: 1000,
            endIndent: 1000,
          ),
          _estadoInput(),
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
            onPressed: () {
              Navigator.pushNamed(
                context,
                'menu',
                arguments: ScreenArguments(
                  _edad,
                  _estado,
                  _nombre,
                ),
              );
            },
            child: Text('Iniciar'),
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
          hintText: 'Nombre completo',
          labelText: 'Nombre',
          helperText: 'solo texto',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
          print(_nombre);
        });
      },
    );
  }

  Widget _edadInput() {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          hintText: 'Edad',
          labelText: 'Edad',
          helperText: 'números y letras',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        setState(() {
          _edad = int.parse(valor);
          print(_edad);
        });
      },
    );
  }

  Widget _estadoInput() {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          hintText: 'Estado',
          labelText: 'Estado',
          helperText: 'solo texto',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        setState(() {
          _estado = valor;
          print(_estado);
        });
      },
    );
  }
}

class ScreenArguments {
  final int edad;
  final String estado;
  final String nombre;

  ScreenArguments(this.edad, this.estado, this.nombre);
}

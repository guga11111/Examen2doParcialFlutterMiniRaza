import 'dart:math';

import 'package:flutter/material.dart';

import 'menu.dart';

class GeneratePage extends StatefulWidget {
  @override
  _GeneratePageState createState() => _GeneratePageState();
}

class _GeneratePageState extends State<GeneratePage> {
  int _max;
  int _min;
  int _r1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text(_r1.toString(),
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
            onPressed: () => randomNumber(),
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
          _max = int.parse(valor);
          print(_max);
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
          _min = int.parse(valor);
          print(_min);
        });
      },
    );
  }

  randomNumber() {
    print('entro');
    final _random = new Random();
    print(_min);
    print(_max);
    setState(() {
      _r1 = _max + _random.nextInt(_min - _max);
      print(_r1);
    });
  }
}

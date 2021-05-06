import 'package:flutter/material.dart';
import 'dart:math';
import 'menu.dart';

class ChicharroneraPage extends StatefulWidget {
  @override
  _ChicharroneraPageState createState() => _ChicharroneraPageState();
}

class _ChicharroneraPageState extends State<ChicharroneraPage> {
  String _x1;
  String _x2;
  String _x3;
  String _r1 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicharronera'),
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
          _edadInput(),
          Divider(
            thickness: 0,
            indent: 1000,
            endIndent: 1000,
          ),
          _thirdInput(),
          Divider(
            thickness: 0,
            indent: 1000,
            endIndent: 1000,
          ),
          ElevatedButton(
            onPressed: () => chicharronera(),
            child: Text('Calcular'),
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
          hintText: 'Valor de x1',
          labelText: 'X1',
          helperText: 'Ingresar dato de x1',
          icon: Icon(Icons.looks_one),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        setState(() {
          _x1 = valor;
          print(_x1);
        });
      },
    );
  }

  Widget _edadInput() {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          hintText: 'Valor de x2',
          labelText: 'X2',
          helperText: 'Ingresar dato de x2',
          icon: Icon(Icons.looks_two),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        setState(() {
          _x2 = valor;
          print(_x2);
        });
      },
    );
  }

  Widget _thirdInput() {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          hintText: 'Valor de x3',
          labelText: 'X3',
          helperText: 'Ingresar dato de x3',
          icon: Icon(Icons.looks_3),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        setState(() {
          _x3 = valor;
          print(_x3);
        });
      },
    );
  }

  chicharronera() {
    double a = double.parse(_x1);
    double b = double.parse(_x2);
    double c = double.parse(_x3);
    double d;
    double x1;
    double x2;
    //No se puede tener 0 en una ecuación cuadratica en el coeficiento a, ya que esta dejaria de ser una ecuación cuadratica
    if (a == 0) {
      x1 = -c / b;
      x2 = 0;
    } else {
      d = b * b - 4 * a * c;
      if (d > 0) {
        x1 = (-b + sqrt(d)) / (2 * a);
        x2 = (-b - sqrt(d)) / (2 * a);
      }
      if (d == 0) {
        x1 = (-b / 2) * a;
        x2 = (-b / 2) * a;
      }
      if (d < 0) {
        print('esta es una raiz imaginaria');
      }
    }
    //let raiz = Math.sqrt(b^2 - (4 * (a * c)));
    //let x1 = (-b + raiz)/(2*a);
    // 1  -5   6 --- 3  2
    //alert("A " + a + " B: " + b + " C: " +c);

    print('x1= ' + x1.toString() + ' x2= ' + x2.toString());
    setState(() {
      _r1 = 'x1= ' + x1.toString() + ' x2= ' + x2.toString();
    });
  }
}

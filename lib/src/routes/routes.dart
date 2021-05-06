import 'package:examen_2doparcial/src/pages/chicharronera.dart';
import 'package:examen_2doparcial/src/pages/generaterandom.dart';
import 'package:examen_2doparcial/src/pages/home.dart';
import 'package:examen_2doparcial/src/pages/menu.dart';
import 'package:examen_2doparcial/src/pages/ordenamiento.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '': (BuildContext context) => HomePage(),
    'menu': (BuildContext context) => MenuPage(),
    'chicharronera': (BuildContext context) => ChicharroneraPage(),
    'generate': (BuildContext context) => GeneratePage(),
    'ordenamiento': (BuildContext context) => OrdenamientoPage()
  };
}

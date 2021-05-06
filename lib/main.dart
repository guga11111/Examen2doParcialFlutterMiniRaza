//import 'package:componentes/src/pages/homepage_alternativo.dart';
import 'package:examen_2doparcial/src/pages/home.dart';
import 'package:examen_2doparcial/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Examen2 APP',
      debugShowCheckedModeBanner: false,
      //home:HomePage(),
      initialRoute: '/menu',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta : ${settings.name}');
        // Si en caso la ruta no existe puedo redireccionar a una que sea estatica
        return MaterialPageRoute(builder: (BuildContext context) => HomePage());
      },
    );
  }
}

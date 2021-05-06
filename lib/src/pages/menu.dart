import 'package:flutter/material.dart';

import 'chicharronera.dart';
import 'generaterandom.dart';
import 'home.dart';
import 'ordenamiento.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Divider(
                height: 30,
                thickness: 0,
                indent: 1000,
                endIndent: 1000,
              ),
              Text(
                  'Hola ' +
                      args.nombre +
                      ', tienes ' +
                      args.edad.toString() +
                      ' años, y eres del estado de ' +
                      args.estado,
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 0.3, color: Colors.blueAccent)),
              Divider(
                height: 200,
                thickness: 0,
                indent: 1000,
                endIndent: 1000,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChicharroneraPage()));
                },
                child: Text('A'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
              ),
              Divider(
                height: 30,
                thickness: 0,
                indent: 1000,
                endIndent: 1000,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdenamientoPage()));
                },
                child: Text('B'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
              ),
              Divider(
                height: 30,
                thickness: 0,
                indent: 1000,
                endIndent: 1000,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GeneratePage()));
                },
                child: Text('C'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
              ),
            ],
          ),
        ));
  }
}

import 'dart:js_util';

import 'package:flutter/material.dart';

class Listview2 extends StatelessWidget {
  var vengadores = ["capitan america", "iron man", "hulk", "thor"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
          //obteniendo el tamaño  de la lista
          itemCount: vengadores.length,
          itemBuilder: (context, index) => ListTile(
            //asignando el nombre de ListTile de acuerdo a la lista
            title: Text(vengadores[index]),
            //Asignando los iconos de cada ListTile
            trailing: Icon(Icons.chevron_right, color: Colors.red),
            onTap: () {
              //Variable que obtiene opcion seleccionada
              var opc = vengadores[index];
              //Mostrar variable en consola
              print(opc);
            },
          ),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}

import 'package:flutter/material.dart';

import 'components/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

//TODO: Buscar dialog
//TODO Crear categorias
//TODO Crear lista de precios
//TODO Funcionar el filtro de productos
//TODO Guardar la url de la imagen

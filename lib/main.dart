import 'package:flutter/material.dart';
import 'views/miubicacion.dart';
// import './views/flutter_location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Ubicacion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MiUbicacion(),
      debugShowCheckedModeBanner: false,
    );
  }
}

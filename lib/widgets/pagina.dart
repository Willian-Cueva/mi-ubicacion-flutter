import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

class Pagina extends StatefulWidget {
  // const Pagina({Key? key}) : super(key: key);

  final Icon icono;
  final String titulo;
  final Object clase;

  Pagina(
      {required this.icono,
      this.titulo = "titulo",
      required this.clase});

  @override
  _PaginaState createState() => _PaginaState();
}

class _PaginaState extends State<Pagina> {
  //   Icon icono;
  // final String titulo;
  // final Object clase;

  // _PaginaState({
  //    this.icono = Icon(Icons.ac_unit),
  //     this.titulo = "titulo",
  //     required this.clase
  // })
  
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
    // leading: this.icono,
    // title: Text(titulo),
    // onTap: () {
    //   setState(() {
    //     Navigator.push(
    //         context, new MaterialPageRoute(builder: (context) => clase));
    //   });
    // },
  );
  }
}

import 'package:flutter/material.dart';
import 'package:restaurante02/pages/AtualizarDados.dart';
import 'package:restaurante02/pages/Inicio.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int _indiceAtual = 0;

  List<Widget> _pages = [
    Inicio(),
    AtualizarDados()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
          padding: EdgeInsets.all(5),
          child: _pages[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.deepPurple,
        items: [
          BottomNavigationBarItem(
              title: Text("Inicio"),
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              title: Text("Atualiar Dados"),
              icon: Icon(Icons.sync)
          )
        ],
      ),
    );

  }
}

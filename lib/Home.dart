import 'dart:math';

import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirTelaResultado(){

      var itens = ["cara","coroa"];
      var numero = Random().nextInt(itens.length);
      var resultado = itens[numero];

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Resultado(resultado) ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,97,189,140),
      body:
      Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child:  GestureDetector(
                  onTap: _abrirTelaResultado,
                  child: Image.asset("images/botao_jogar.png"),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}

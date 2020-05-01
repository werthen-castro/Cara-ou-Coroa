import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;

  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

  var caminhoImagem = "images/moeda_cara.png";

  @override
  Widget build(BuildContext context) {

    if (widget.valor == "cara"){
      caminhoImagem = "images/moeda_cara.png";
    }else{
      caminhoImagem = "images/moeda_coroa.png";
    }
    return  Scaffold(
        backgroundColor: Color.fromARGB(255,97,189,140),
        body:
        Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(caminhoImagem),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset("images/botao_voltar.png"),
                  )
                )
              ],
            ),
          ),
        )
    );
  }
}

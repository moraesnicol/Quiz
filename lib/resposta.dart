import 'package:flutter/material.dart';


class Resposta extends StatelessWidget {
final String texto;
final void Function() quandoSelecionado;

Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return  Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 60.0),
            
            
            child: RaisedButton(

            textColor: Colors.white,
            color: Colors.purple,
            child: Text(texto),
              onPressed: quandoSelecionado,
                
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            
),
              
              
              
              
      ),
    );
  }
}
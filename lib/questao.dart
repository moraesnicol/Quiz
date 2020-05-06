import 'package:flutter/material.dart';


class Questao extends StatelessWidget {

final String texto;

Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(13.0),
      
     
     
      child: Text(
        texto,
        style: TextStyle(fontSize: 25, 
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        color: Colors.purple,
        
        ),
        textAlign: TextAlign.center,
        
      
        
        ),
    );
  }
}
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());




 class _PerguntaAppState extends State<PerguntaApp> {
   var _perguntaSelecionada = 0;
  

   void _responder() {
    setState(() {
    _perguntaSelecionada++;
    });
  
  
   }
    @override
   Widget build(BuildContext context) {
      final List<Map<String, Object>> perguntas = [
        {
          'texto:' 'Qual a glândula responsável pela hipófise?',
          'texto:' 'Qual a glândula responsável pela hipófise?',
          'texto:' 'Qual a glândula responsável pela hipófise?',
        },
        {


        }         
      ];

     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text('Quiz Anatômico'),
           backgroundColor: Colors.purple,
           centerTitle: true,
           
                 
         ),
       body: Column(
         
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]), 
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 1', _responder),
           
          ],
       ),
       )
        
     );

   }

 }

 class PerguntaApp extends StatefulWidget {

   _PerguntaAppState createState() {
     return _PerguntaAppState();
   }
}

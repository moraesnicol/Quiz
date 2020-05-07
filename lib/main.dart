import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';



main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
       {
          'texto': 'Qual destes não é um hormônio hipofisário?',
          'respostas': [
            {'texto': 'TRH', 'pontuacao': 10}, 
            {'texto': 'LH', 'pontuacao': 5}, 
            {'texto': 'FSH', 'pontuacao': 3}, 
            {'texto': 'TSH', 'pontuacao': 1},
            ],        
        },
        {
          'texto': 'Qual a camada mais superficial da pele?',
          'respostas': [
            {'texto':'Derme', 'pontuacao': 2},
            {'texto':'Hipoderme','pontuacao': 4},
            {'texto':'Córnea', 'pontuacao': 1},
            {'texto':'Basal', 'pontuacao': 10},
            ],

        }, 
        {
          'texto': 'Qual vaso é responsável por levar sangue oxigenado ao corpo?',
          'respostas': [
            {'texto':'Artéria pulmonar', 'pontuacao': 10},
            {'texto':'Veia Cava', 'pontuacao': 2},
            {'texto':'Aorta', 'pontuacao': 2},
            {'texto': 'Basal','pontuacao': 2},
            
            ],

        }    
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }

    print(_pontuacaoTotal);
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
             leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),   
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
          title: Text('Quiz Anatômico'),
          
          backgroundColor: Colors.purple,
          centerTitle: true,
 
        ),
        body: temPerguntaSelecionada
        
            ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              quantoResponder: _responder,
            )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
            ),
            
              
      );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

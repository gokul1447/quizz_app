
import 'package:flutter/material.dart';
import 'package:quiz_app/objectss/data.dart';

import 'package:quiz_app/question.dart';

import 'package:quiz_app/result_screen.dart';

class  Quiz extends StatefulWidget{
  const Quiz({super.key});

  
  @override
 State<Quiz> createState() => _Quiz();
 
}

class _Quiz extends State<Quiz> {
   List<String> selectanswer=[];
  Widget? screen;
  var a=0;

  

void startScreen() {
  setState(() {
     a=1;
  });
}

void chooseans(String answer) {
  selectanswer.add(answer);

  if(selectanswer.length == data.length) {
    setState(() {
      
      a=2;
    });
  }
}
  
 
  @override
  Widget build(context) {
    var screen=disply(startScreen);
    if(a==1) {
      screen=Question(onans: chooseans,);
    }
    if(a==2) {
      screen=Resultscreen(choseans:selectanswer,);
    }
    
    return MaterialApp(
    home: Scaffold(
      body: Container(
      alignment: Alignment.center,
      width: 500,
      height: 900,
      color: const Color.fromARGB(198, 64, 7, 126),
      child: screen
    ),
      ),
    );
  }
}


Widget disply(void Function() startS) {
  
  return
  
Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Opacity(
            opacity: 0.6,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
          ),
         const SizedBox(
            height: 20,
          ),
          const Text(
            'Learn The Flutter Fun Way',
            style:  TextStyle(
            color: Colors.white,
            fontSize: 30

            ),
            
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: startS,
            icon:const Icon(Icons.add_outlined),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ],
      );
}
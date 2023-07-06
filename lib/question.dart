import 'package:flutter/material.dart';
import 'package:quiz_app/buttons.dart';
import 'package:quiz_app/objectss/data.dart';
import 'package:google_fonts/google_fonts.dart';



class Question extends StatefulWidget {
  const Question({super.key,required this.onans});
  final void Function(String ans) onans;
  @override
  State<Question> createState() => _Question();
}

class _Question extends State<Question> {
  var changequestion=0;

  void changeans(String selectanswer) {
    widget.onans(selectanswer);
    
    setState(() {
      changequestion+=1;
    });
    
  }  

  
  @override
 
  Widget build(context) {
     final  questionscreen=data[changequestion];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          
           Text(
            questionscreen.qns,
            style: GoogleFonts.lato(
              color:const  Color.fromARGB(255, 70, 163, 226),
              fontSize: 26,
              fontWeight: FontWeight.bold
              
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          ...questionscreen.suffeled().map((item) {
            return Container(
              margin: const EdgeInsets.only(top: 0,left: 10,right: 10,bottom:0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Buttons(anstext: item, tap: () {
                        changeans(item);
                      }),
                      const SizedBox(
              height: 10, // Add spacing of 10 pixels between buttons
                      ),
                    ],
                  ),
            );

          }),
         
        ],
      ),
    );
  }
}

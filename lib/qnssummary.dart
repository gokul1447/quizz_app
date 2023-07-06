import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Qnssummary extends StatelessWidget {
  const Qnssummary(this.summarydata, {super.key});
  final List<Map<String, Object>> summarydata;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map((datas) {
            return Row(crossAxisAlignment: CrossAxisAlignment.start,
            
              
              mainAxisAlignment: MainAxisAlignment.start,

              
              children: [
                
                Text(((datas['question_index'] as int) + 1).toString(),
                style: GoogleFonts.abhayaLibre(
                  color: Colors.amber,
                  fontSize: 55,
                  
                  
                ),
                ),
              const  SizedBox(width: 25,),

                Expanded(
                  
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(datas['question'] as String,
                      style: GoogleFonts.abhayaLibre(
                        fontWeight: FontWeight.bold,
                  color:const Color.fromARGB(255, 27, 5, 81),
                  fontSize: 28
                )
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      
                      Text(datas['user_answer'] as String,
                       style: GoogleFonts.alegreya(
                  color:const Color.fromARGB(255, 12, 137, 220),
                  fontSize: 24
                ),),
                      Text(datas['correct_answer'] as String,
                      style: GoogleFonts.barriecito(
                  color:const Color.fromARGB(255, 221, 10, 133),
                  fontSize: 22
                )),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

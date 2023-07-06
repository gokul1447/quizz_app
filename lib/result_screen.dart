import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/objectss/data.dart';

import 'package:quiz_app/qnssummary.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen({super.key, required this.choseans});
  final List<String> choseans;
  List<Map<String, Object>> getresults() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < choseans.length; i++) {
      summary.add({
        'question_index': i,
        'question': data[i].qns,
        'correct_answer': data[i].ans[0],
        'user_answer': choseans[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summarydata = getresults();
    final numcorrectquestions = summarydata.where((datas) {
      return datas['user_answer'] == datas['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin:const EdgeInsets.all(40),
        child: Column(
          children: [
          const  SizedBox(
              height: 100,
            ),
            Text(
                'You answered $numcorrectquestions out of 6 question correctly!',
                style: GoogleFonts.lacquer(
                  fontWeight: FontWeight.bold,
                 color:const Color.fromARGB(255, 197, 12, 218),
                  fontSize: 30,
                ),),
            const SizedBox(height: 20),
            Qnssummary(getresults()),
            const SizedBox(height: 10),
            Text(choseans[0]),
            TextButton(onPressed: () {}, child:const Text('restart quiz!'))
          ],
        ),
      ),
    );
  }
}

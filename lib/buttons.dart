import 'package:flutter/material.dart';




class Buttons extends StatelessWidget {
  const Buttons( {super.key, required this.anstext,required this.tap});
  final String anstext;
  final void Function() tap;


  @override
  Widget build (context) {
    return ElevatedButton(
      onPressed: tap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(anstext),
    );
  }
}
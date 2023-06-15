import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class boldBlackText extends StatelessWidget {
  final String text;

  const boldBlackText(this.text,  {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
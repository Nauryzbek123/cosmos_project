import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MontserratText extends StatelessWidget {
  final double val;
  final String text;
  final Color color;
  final FontWeight fontWeight;

  const MontserratText(this.text, this.color, this.val,this.fontWeight, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
          color: color, fontSize: val, fontWeight: fontWeight),
    );
  }
}

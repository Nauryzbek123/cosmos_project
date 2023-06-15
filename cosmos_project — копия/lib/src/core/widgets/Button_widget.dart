import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttonwidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  final Color containerColor;
  final Color textColor;
  const Buttonwidget({
    required this.text,
    required this.onTap,
    required this.containerColor,
    required this.textColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: containerColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 140),
          child: Text(
            text,
            style: GoogleFonts.montserrat(fontSize: 20,color: textColor,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

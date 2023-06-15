import 'package:cosmos_project/src/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class boldWhiteText extends StatelessWidget {
  final String text;

  const boldWhiteText(this.text,  {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
          color: AppColors.whiteColor, fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
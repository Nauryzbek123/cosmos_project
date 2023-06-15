import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/app_colors.dart';
import 'MontseratText.dart';

class TextFormField12 extends StatelessWidget {
  final String hint;

  const TextFormField12({Key? key, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint, 
          hintStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
          filled: true,
          fillColor: AppColors.whiteColor,
          focusColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(color: AppColors.whiteColor)),
          
        ),
      ),
    );
  }
}

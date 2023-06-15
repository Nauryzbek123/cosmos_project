import 'package:cosmos_project/src/core/resources/app_colors.dart';
import 'package:cosmos_project/src/core/widgets/column_spacer.dart';
import 'package:cosmos_project/src/features/app/widgets/pinput.dart';
import 'package:flutter/material.dart';

Widget otpVerificationCode() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Смс потверждение",
          style: TextStyle(fontSize: 30, color: AppColors.whiteColor,fontWeight: FontWeight.normal),
        ),
        ColumnSpacer(3),
       
        
        
        RoundedWithShadow(),
        ColumnSpacer(2),
      ],
    ),
  );
}
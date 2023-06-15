import 'package:cosmos_project/src/core/resources/app_colors.dart';
import 'package:cosmos_project/src/core/widgets/MontseratText.dart';
import 'package:cosmos_project/src/core/widgets/column_spacer.dart';
import 'package:cosmos_project/src/core/widgets/row_spacer.dart';
import 'package:flutter/material.dart';

class Setsview extends StatefulWidget {
  const Setsview({super.key});

  @override
  State<Setsview> createState() => _SetsviewState();
}

class _SetsviewState extends State<Setsview> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          
          color: AppColors.whiteColor
        ),
        child: Column(
          children: [
            Image.asset('assets/cont/ps.png',height: 100,),
            
                ColumnSpacer(1),
                Row(
                  children: [
                    RowSpacer(1.5),
                    MontserratText("Аренда", AppColors.blueGrey, 15, FontWeight.normal),
                  ],
                ), 
                Row(
                  children: [
                    RowSpacer(1.5),
                    MontserratText("Playstation 4 Pro", AppColors.blueGrey, 15, FontWeight.bold)

                  ],
                ), 
                Row(
                  children: [
                    RowSpacer(1.5),
                    MontserratText("4000 тг", AppColors.blueGreen, 15, FontWeight.bold)

                  ],
                )

             
          ],
        )
      ),
    );
  }
}

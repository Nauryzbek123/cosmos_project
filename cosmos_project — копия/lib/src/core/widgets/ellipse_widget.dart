import 'package:cosmos_project/src/core/resources/app_colors.dart';
import 'package:cosmos_project/src/core/widgets/boldWhiteText.dart';
import 'package:cosmos_project/src/core/widgets/row_spacer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EllipseWidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  final IconData icon;
  const EllipseWidget({
    required this.text,
    required this.onTap,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.blueWhite,
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        width: 159,
        height: 59,
        child: Row(
          children: [
            RowSpacer(0.4),
            Container(
              width: 50,
              height: 60,
              decoration: BoxDecoration(
                  color: AppColors.whiteColor, shape: BoxShape.circle),
              child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              ),
            ),
            RowSpacer(0.4),
            Expanded(
                child: Text(
              text,
              style: GoogleFonts.montserrat(
                  color: AppColors.whiteColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ))
          ],
        ),
      ),
    );
  }
}

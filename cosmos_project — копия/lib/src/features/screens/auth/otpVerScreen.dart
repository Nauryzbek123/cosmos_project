import 'package:auto_route/auto_route.dart';
import 'package:cosmos_project/src/features/app/router/router.gr.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/app_colors.dart';
import '../../../core/widgets/Button_widget.dart';
import '../../../core/widgets/column_spacer.dart';
import '../../../core/widgets/row_spacer.dart';
import '../../app/widgets/otpVer_widget.dart';

class OtpVerScreen extends StatelessWidget {
  const OtpVerScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
         image: DecorationImage(
          image: AssetImage('assets/png/Back.png'),
         fit: BoxFit.cover
         ) 
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ColumnSpacer(5),
                 Row(
                  children: [
                   
                    
                    Icon( Icons.arrow_back_ios_new_outlined,color: Colors.grey,size: 25,),
                    RowSpacer(28),
          
                  
                  ],
                ), 
                const ColumnSpacer(10),
                otpVerificationCode(),
                const ColumnSpacer(2),
                const Text(
                  "Отправить код еще раз ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.whiteColor),
                ),
               /* const Text(
                  "Повторно запросить SMS-код \n Можно через 0:59 секунд",
                  textAlign: TextAlign.center,
                ),*/
                ColumnSpacer(2),
                 Buttonwidget(text: "Войти", onTap:() => AutoRouter.of(context).push(CityRoute()), containerColor: AppColors.whiteColor, textColor: Colors.black),            
                const ColumnSpacer(5),
                
              ],
            ),
          ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:cosmos_project/src/features/app/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../core/resources/app_colors.dart';
import '../../../core/widgets/Button_widget.dart';
import '../../../core/widgets/MontseratText.dart';
import '../../../core/widgets/column_spacer.dart';
import '../../../core/widgets/row_spacer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   var maskFormatter =  MaskTextInputFormatter(
      mask: '+# (###) ### ####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
      image: DecorationImage(
          image:AssetImage('assets/png/Vector.jpg'), fit: BoxFit.cover),
    ),
    child:  Stack(
      children: [
        Column(
          children: [
            const ColumnSpacer(6),
            Row(
              children: [
               
                const RowSpacer(2),
                GestureDetector(
                  onTap: () => context.router.pop(),
                  child: Icon(Icons.close_rounded,color: AppColors.whiteColor,size: 25,)),
                const RowSpacer(28),

              
              ],
            ), 
            const ColumnSpacer(10),
           
                const Stack(
                  children: [
                                   Row(
                                     children: [
                                      RowSpacer(31),
                                       Image(
                                        
                                        image: AssetImage('assets/png/circle12.png',),
                                        
                                        
                                                                       ),
                                     ],
                                   ),
           ] ), 
           Center(
             child: Column(
               children: [
                const MontserratText("Войти", AppColors.whiteColor, 30, FontWeight.bold), 
                const ColumnSpacer(2),
                 Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                        filled: true,
                                        fillColor: AppColors.whiteColor,
                                        focusColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15.0),
                                          borderSide: const BorderSide(
                                            color: AppColors.whiteColor
                                          )
                                        ),
                                        hintText: "",
                              
                                      ),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [maskFormatter]
                                ),
                              ),
                               const ColumnSpacer(2),
                        Buttonwidget(text: "Дальше", onTap:() => AutoRouter.of(context).push(OtpVerScreen()), containerColor: AppColors.whiteColor, textColor: Colors.purple)
               ],
             ),
           ),
      ])
    ])));
  }
}

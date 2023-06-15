import 'package:auto_route/auto_route.dart';
import 'package:cosmos_project/src/core/widgets/Button_widget.dart';
import 'package:cosmos_project/src/core/widgets/Gender_widget.dart';
import 'package:cosmos_project/src/core/widgets/TextFormField.dart';
import 'package:cosmos_project/src/core/widgets/checkBox_widget.dart';
import 'package:cosmos_project/src/core/widgets/column_spacer.dart';
import 'package:cosmos_project/src/core/widgets/row_spacer.dart';
import 'package:cosmos_project/src/features/app/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../core/resources/app_colors.dart';
import '../../../core/widgets/MontseratText.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
            ColumnSpacer(6),
            Row(
              children: [
               
                RowSpacer(2),
                Icon(Icons.close_rounded,color: AppColors.whiteColor,size: 25,),
                RowSpacer(28),

               GestureDetector(
                onTap: () => AutoRouter.of(context).push(LoginScreen()),
                child:
                MontserratText("Войти", AppColors.whiteColor, 20, FontWeight.bold))
              ],
            ), 
            ColumnSpacer(10),
           
                Stack(
                  children: [
                                   Row(
                                     children: [
                                      RowSpacer(31),
                                       Container(
                                          
                                         child: const Image(
                                          
                                          image: AssetImage('assets/png/circle12.png',),
                                          
                                          
                                                                         ),
                                       ),
                                     ],
                                   ),
                                
                    Center(
                      child: Column(
                        children: [
                         
                          MontserratText("Зарегестрироваться", AppColors.whiteColor, 20, FontWeight.bold), 
                          ColumnSpacer(2),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.whiteColor,
                                  focusColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                      color: AppColors.whiteColor
                                    )
                                  ),
                                  hintText: "",
                        
                                ),
                                keyboardType: TextInputType.number,
                                inputFormatters: [maskFormatter]
                          ),
                        ),
                        ColumnSpacer(1),
                        TextFormField12(hint: "Имя"),
                        ColumnSpacer(1),
                        TextFormField12(hint: "Фамилия"),
                        ColumnSpacer(1),
                        TextFormField12(hint: "1999"),
                       ColumnSpacer(2),
                           Row(
                         children: [
                          RowSpacer(2),
                          MontserratText("Пол", AppColors.whiteColor, 20, FontWeight.normal),
                          RowSpacer(2),
                          Genderwidget(text: "Мужской", onTap: () => {}, containerColor: AppColors.whiteColor, textColor: Colors.blueAccent), 
                          RowSpacer(2),
                          Genderwidget(text: "Женский", onTap: () => {}, containerColor: AppColors.whiteColor, textColor: Colors.blueAccent)
                         ],
                          ),
                          ColumnSpacer(2),
                          TextFormField12(hint: "Код друга (не обязательно)"),
                        
                        ColumnSpacer(1),
                        Row(
                        children: [
                          RowSpacer(1),
                          CheckboxExample(), 
                          MontserratText("Я ознакомлен с публичной офертой",AppColors.whiteColor , 15, FontWeight.bold)
                        ],
                        ),
                        ColumnSpacer(2),
                        Buttonwidget(text: "Дальше", onTap:() => AutoRouter.of(context).push(OtpVerScreen()), containerColor: AppColors.whiteColor, textColor: Colors.blueAccent)
                        ],
                      ),
                    ),
                  ],
                ),
               
              ],
            )
          ],
        
      
    ),
      ),
    );
  }
}

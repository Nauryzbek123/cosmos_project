import 'package:auto_route/auto_route.dart';
import 'package:cosmos_project/src/core/resources/app_colors.dart';
import 'package:cosmos_project/src/core/widgets/Button_widget.dart';
import 'package:cosmos_project/src/core/widgets/MontseratText.dart';
import 'package:cosmos_project/src/core/widgets/column_spacer.dart';
import 'package:cosmos_project/src/core/widgets/row_spacer.dart';
import 'package:cosmos_project/src/features/app/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return   Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
      image: DecorationImage(
          image:AssetImage('assets/png/Vector.jpg'), fit: BoxFit.cover),
    ),
    child:  Stack(
      children:[ Column(
           children: [
            const ColumnSpacer(3),
            Row(
              children: [
                const RowSpacer(21),
                Stack(
                  children: [
                    Container(
                              width: 200,
                              height: 200,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,),
                              //alignment: Alignment.center,
                              child: const Image(
                                image: AssetImage('assets/png/circlehalf.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Column(
                              children: [
                                const ColumnSpacer(6),
                                
                                    Container(
                                      width: 200,
                                      height: 200,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,),
                                      //alignment: Alignment.center,
                                      child: const Align(
                                        alignment: Alignment.bottomRight,
                                        child: Image(
                                          image: AssetImage('assets/png/circlehalf2.png'),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                    
                                  ],
                                ),
                              
                          
                  ],
                ),
                
              ],
            ), 
          
            Stack(
                children: [
                    Center(
                      child: Column(
                                     children: [        
                                  SvgPicture.asset("assets/svg/Logo.svg"),
                                 
                                      MontserratText("Kosmos", AppColors.whiteColor, 40,FontWeight.bold),
                                   
                                  MontserratText("Arenda Playstation", AppColors.whiteColor, 20,FontWeight.normal)
                                     ],
                                   ),
                    ),
                  
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Image(
                                image: AssetImage('assets/png/circle1.png'),
                                fit: BoxFit.contain,
                              ),
                              
              ],
            ), 
                ],
            ),
            
            
            const ColumnSpacer(7.1),
               Row(
              children: [
                const RowSpacer(0),
                Stack(
                  children: [
                    const Image(
                                image: AssetImage('assets/png/bottom1.png'),
                                fit: BoxFit.contain,
                              ),
                             Row(
                               children: [
                                const RowSpacer(2),
                                 Column(
                                  children: [
                                    const MontserratText("Тілді таңдаңыз/Выбор языка", AppColors.whiteColor, 15.33, FontWeight.bold),
                                    const ColumnSpacer(2),
                                    Buttonwidget(onTap: () => AutoRouter.of(context).push(IntroSliderRoute()), containerColor: AppColors.whiteColor ,text: "Қазақша", textColor: Colors.blueAccent),
                                    const ColumnSpacer(1),
                                    Buttonwidget(onTap: () => AutoRouter.of(context).push(IntroSliderRoute()),text: "Русский", containerColor: AppColors.whiteColor, textColor: Colors.blueAccent)

                                    
                                  

                                   
                                     
                                  ],
                                 ),
                               ],
                             ),
                            
                            const Column(
                              children: [
                                ColumnSpacer(12.3),
                                Row(
                                  children: [
                                    RowSpacer(22.4),
                                    
                                         Align(
                                            alignment: Alignment.bottomRight,
                                            child: Image(
                                              image: AssetImage('assets/png/bottom2.png'),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                       
                                      ],
                                    ),
                              ],
                            ),
                              
                          
                  ],
                ),
              ],
            ), 
           ],
      ),
      ]
    ),
    )
     
    );
  }
}

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:cosmos_project/src/core/resources/app_colors.dart';
import 'package:cosmos_project/src/core/widgets/MontseratText.dart';
import 'package:cosmos_project/src/core/widgets/column_spacer.dart';
import 'package:cosmos_project/src/core/widgets/ellipse_widget.dart';
import 'package:cosmos_project/src/core/widgets/row_spacer.dart';
import 'package:cosmos_project/src/features/app/widgets/CarouselView_widget.dart';
import 'package:cosmos_project/src/features/app/widgets/SetsView.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/boldWhiteText.dart';

class MainBarScreen extends StatefulWidget {
  const MainBarScreen({super.key});

  @override
  State<MainBarScreen> createState() => _MainBarScreenState();
}

class _MainBarScreenState extends State<MainBarScreen> {
  int pageIndex = 0;
  List<Widget> list = [
    ContainerImg('assets/png/slideshow1.png'),
    ContainerImg('assets/png/slideshow1.png'),
    ContainerImg('assets/png/slideshow1.png')
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/png/Back.png'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ColumnSpacer(0),
                  Stack(
                    children: [
                      Row(
                        children: [
                          RowSpacer(22),
                          Image.asset('assets/png/maintab1.png'),
                        ],
                      ),
                      Column(
                        children: [
                          ColumnSpacer(5),
                          Row(
                            children: [
                              RowSpacer(4),
                              MontserratText("Главная", AppColors.whiteColor,
                                  25, FontWeight.bold),
                              RowSpacer(12),
                              MontserratText("Алматы", AppColors.whiteColor, 20,
                                  FontWeight.w600),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: SizedBox(
                      width: 400,
                      height: 200,
                      child: PageView(
                        children: list,
                        onPageChanged: (index) {
                          setState(() {
                            pageIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                  CarouselIndicator(
                    count: list.length,
                    index: pageIndex,
                    color: Colors.grey,
                    activeColor: AppColors.bluePurple,
                  ),
                  ColumnSpacer(4),
                  Row(
                    children: [
                      RowSpacer(2),
                      boldWhiteText("Игры"),
                    ],
                  ),
                  
                      ColumnSpacer(2),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return CarouselVV();
                          },
                        ),
                      ),
                      ColumnSpacer(1),
                      CarouselIndicator(
                    count: 5,
                    index: pageIndex,
                    color: Colors.grey,
                    activeColor: AppColors.bluePurple,
                  ),
                  ColumnSpacer(1),
                  Row(
                    children: [
                      RowSpacer(2),
                      boldWhiteText("Аренда")
                    ],
                  ), 
                  ColumnSpacer(2),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return CarouselVV();
                          },
                        ),
                      ),
                      ColumnSpacer(1),
                      CarouselIndicator(
                    count: 5,
                    index: pageIndex,
                    color: Colors.grey,
                    activeColor: AppColors.bluePurple,
                  ),
                  ColumnSpacer(3),
                  Row(
                    children: [
                      RowSpacer(3),
                      EllipseWidget(text: "Бронь по телефону", onTap:() => {},icon: Icons.phone_outlined, ),
                       RowSpacer(2),
                      EllipseWidget(text: "Написать нам", onTap:() => {},icon: Icons.question_answer_outlined,)
                    ],
                  ),
                  ColumnSpacer(5), 
                   Row(
                   children: [
                    RowSpacer(2),
                   boldWhiteText("Сеты"),
                   ],
                  ),
                   ColumnSpacer(2),
                      
                          
                              
                                  Row(
                                    children: [
                                      RowSpacer(1),
                                      Expanded(
                                        child: SizedBox(
                                          height: 200,
                                          child: ListView.builder(
                                            
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return Setsview();
                                            },
                                          ),
                                        ),
                                      ),
                                      RowSpacer(2),
                                      Expanded(
                                        child: SizedBox(
                                          height: 200,
                                          child: ListView.builder(
                                            
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return Setsview();
                                            },
                                          ),
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                               
                          
                
            ],
          ),
      ]  ),
      ),
    )
    );
  }
}

Widget ContainerImg(String img) {
  return Image.asset(
    img,
    fit: BoxFit.fill,
    width: 200,
    height: 200,
  );
}

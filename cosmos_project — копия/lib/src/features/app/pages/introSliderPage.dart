import 'package:auto_route/auto_route.dart';
import 'package:cosmos_project/src/core/resources/app_colors.dart';
import 'package:cosmos_project/src/core/widgets/MontseratText.dart';
import 'package:cosmos_project/src/core/widgets/column_spacer.dart';
import 'package:cosmos_project/src/core/widgets/row_spacer.dart';
import 'package:cosmos_project/src/features/app/router/router.gr.dart';
import 'package:flutter/material.dart';

class IntroSliderPage extends StatefulWidget {
  const IntroSliderPage({super.key});

  @override
  State<IntroSliderPage> createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       
        elevation: 0,
        backgroundColor: Colors.white,
        actions:  <Widget>[
          Row(
           children: [
               
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: GestureDetector(
                onTap: () => AutoRouter.of(context).push(const RegistrationScreen()),
                child: MontserratText("Пропустить", Colors.blueAccent, 20,FontWeight.normal)
                ),
            )
           ],
          )
        ],
      ),
      body: 
           
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              PageView(
                onPageChanged: (int page) {
                  setState(() {
                    currentIndex = page;
                  });
                },
                controller: _pageController,
                children: <Widget>[
                  makePage(
                      image:"assets/png/Sl1.png", title: '', content: "Широкий выбор" , val: 13),
                  makePage(
                      image:"assets/png/Sl2.png", title: '', content: "Удобное оформление", val: 13),
                  makePage(
                      image:"assets/png/sl4.png", title: '', content: "Быстрая доставка" , val: 0),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                child: Row(
                  children: [
                    RowSpacer(4.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:
                      _buildIndicator(),
                      
                    ),
                    RowSpacer(19),
                    GestureDetector(
                      onTap: () => AutoRouter.of(context).push(RegistrationScreen()),
                      child: 
                    MontserratText("Дальше", Colors.blueAccent, 20,FontWeight.w400)), 

                  ],
                ),
              )
            ],
          ),
        
      
    );
  }

  Widget makePage({image,required double val, title, content, reverse = false}) {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          !reverse
              ? Column(
                  children: <Widget>[
                     ColumnSpacer(val),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(image),
                    ),
                    
                  ],
                )
              : SizedBox(),
              ColumnSpacer(25),
          
          Padding(
            padding: EdgeInsetsDirectional.only(top: 20,end: 60),
            child: 
               MontserratText(content, Colors.blueAccent, 20, FontWeight.normal)
            
          ),
          reverse
              ? Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(image),
                    ),
                  ],
                )
              : SizedBox(),
        
     ] )
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}

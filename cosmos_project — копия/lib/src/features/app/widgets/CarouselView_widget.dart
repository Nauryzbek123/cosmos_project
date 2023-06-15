import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:cosmos_project/src/core/widgets/MontseratText.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../core/resources/app_colors.dart';

class CarouselVV extends StatefulWidget {
  const CarouselVV({super.key});

  @override
  State<CarouselVV> createState() => _CarouselVVState();
}

class _CarouselVVState extends State<CarouselVV> {
  Widget build(BuildContext context){
    int pageIndex = 0;

  return SizedBox(
    width: 150, // Set the width of each carousel slider
    child: Column(
      children: [
        CarouselSlider(
          items: [
            Container(

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/png/Games.png'),
                  fit: BoxFit.cover,
                  
                ),
                 borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: 200, // Adjust the height for a bigger image
              child: Center(
                child: MontserratText("Спорт", AppColors.whiteColor, 15, FontWeight.bold),
              ),
            ),
          ],
          options: CarouselOptions(
            viewportFraction:
                0.8, // Adjust the viewportFraction for a bigger image
            enableInfiniteScroll: false,
            initialPage: 0,
            height: 100,
            onPageChanged: (index, reason) {
              setState(() {
                pageIndex = index;
              });
            }, // Adjust the height of the carousel
          ),
        ),
               
      ],
    ),
  );
  }
}


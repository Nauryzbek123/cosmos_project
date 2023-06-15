import 'package:auto_route/auto_route.dart';
import 'package:cosmos_project/src/core/resources/app_colors.dart';
import 'package:cosmos_project/src/features/app/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBAR extends StatelessWidget {
  const BottomNavBAR({super.key});

  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        MainBarScreen(), 
        FavoritesBarScreen(), 
        CartBarScreen(), 
        NotificationBarScreen(), 
        ProfileBarScreen()
      ],
      builder: (context,child,animation) {
          final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(label: '', icon: Icon(Icons.home_outlined, color: Colors.grey,size: 30,)),
              BottomNavigationBarItem(label: '', icon: Icon(Icons.favorite_outline,
              color: Colors.grey,)),
              BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.grey,
            ),
            label: '',
          ), 
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
             color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_outlined,
              color: Colors.grey,
            ),
            label: '',
          ),
            ],
          ),
        );
      },
    );
  }
}

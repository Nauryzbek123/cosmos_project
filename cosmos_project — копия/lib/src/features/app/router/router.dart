import 'package:auto_route/auto_route.dart';
import 'package:cosmos_project/src/features/app/pages/introSliderPage.dart';
import 'package:cosmos_project/src/features/app/pages/start.dart';
import 'package:cosmos_project/src/features/screens/auth/loginScreen.dart';
import 'package:cosmos_project/src/features/screens/auth/otpVerScreen.dart';
import 'package:cosmos_project/src/features/screens/auth/registrationScreen.dart';
import 'package:cosmos_project/src/features/screens/home/BottomNavBar.dart';
import 'package:cosmos_project/src/features/screens/home/CartBar.dart';
import 'package:cosmos_project/src/features/screens/home/FavoritesBar.dart';
import 'package:cosmos_project/src/features/screens/home/MainBar.dart';
import 'package:cosmos_project/src/features/screens/home/NotificationBar.dart';
import 'package:cosmos_project/src/features/screens/home/ProfileBar.dart';
import 'package:cosmos_project/src/features/screens/home/cityPage.dart';
import 'package:auto_route/empty_router_widgets.dart';
@MaterialAutoRouter(
    replaceInRouteName: 'Page,Route',
    routes: <AutoRoute>[
      AutoRoute(page: StartPage,path: '/', initial: true),
      AutoRoute(page: IntroSliderPage, path:'/sliders'),
      AutoRoute(page: RegistrationScreen, path:'/register'),
      AutoRoute(page: LoginScreen, path:'/login'),
      AutoRoute(page: OtpVerScreen, path:'/sms'),
      AutoRoute(page: CityPage, path:'/city'),
      AutoRoute(page: MainBarScreen, path: 'mainbar'),
      AutoRoute(page: FavoritesBarScreen, path: 'favoritebar'),
      AutoRoute(page: CartBarScreen, path: 'cartbar'),
      AutoRoute(page: NotificationBarScreen, path: 'notificationbar'),
      AutoRoute(page: ProfileBarScreen, path: 'profilebar'),

      AutoRoute(page: BottomNavBAR, path:'/bottomMenu', 
      children: [
       
        AutoRoute(page: MainBarScreen, path: 'mainbar'),
        AutoRoute(page: FavoritesBarScreen, path: 'favoritebar'),
        AutoRoute(page: CartBarScreen, path: 'cartbar'),
        AutoRoute(page: NotificationBarScreen, path: 'notificationbar'),
        AutoRoute(page: ProfileBarScreen, path: 'profilebar'),
      
      ]
      ),
    ],
)
class $AppRouter {}

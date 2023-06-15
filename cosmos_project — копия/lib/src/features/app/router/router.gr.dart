// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../../screens/auth/loginScreen.dart' as _i4;
import '../../screens/auth/otpVerScreen.dart' as _i5;
import '../../screens/auth/registrationScreen.dart' as _i3;
import '../../screens/home/BottomNavBar.dart' as _i12;
import '../../screens/home/CartBar.dart' as _i9;
import '../../screens/home/cityPage.dart' as _i6;
import '../../screens/home/FavoritesBar.dart' as _i8;
import '../../screens/home/MainBar.dart' as _i7;
import '../../screens/home/NotificationBar.dart' as _i10;
import '../../screens/home/ProfileBar.dart' as _i11;
import '../pages/introSliderPage.dart' as _i2;
import '../pages/start.dart' as _i1;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    StartRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.StartPage(),
      );
    },
    IntroSliderRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.IntroSliderPage(),
      );
    },
    RegistrationScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.RegistrationScreen(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    OtpVerScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.OtpVerScreen(),
      );
    },
    CityRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.CityPage(),
      );
    },
    MainBarScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.MainBarScreen(),
      );
    },
    FavoritesBarScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.FavoritesBarScreen(),
      );
    },
    CartBarScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.CartBarScreen(),
      );
    },
    NotificationBarScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.NotificationBarScreen(),
      );
    },
    ProfileBarScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.ProfileBarScreen(),
      );
    },
    BottomNavBAR.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.BottomNavBAR(),
      );
    },
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(
          StartRoute.name,
          path: '/',
        ),
        _i13.RouteConfig(
          IntroSliderRoute.name,
          path: '/sliders',
        ),
        _i13.RouteConfig(
          RegistrationScreen.name,
          path: '/register',
        ),
        _i13.RouteConfig(
          LoginScreen.name,
          path: '/login',
        ),
        _i13.RouteConfig(
          OtpVerScreen.name,
          path: '/sms',
        ),
        _i13.RouteConfig(
          CityRoute.name,
          path: '/city',
        ),
        _i13.RouteConfig(
          MainBarScreen.name,
          path: 'mainbar',
        ),
        _i13.RouteConfig(
          FavoritesBarScreen.name,
          path: 'favoritebar',
        ),
        _i13.RouteConfig(
          CartBarScreen.name,
          path: 'cartbar',
        ),
        _i13.RouteConfig(
          NotificationBarScreen.name,
          path: 'notificationbar',
        ),
        _i13.RouteConfig(
          ProfileBarScreen.name,
          path: 'profilebar',
        ),
        _i13.RouteConfig(
          BottomNavBAR.name,
          path: '/bottomMenu',
          children: [
            _i13.RouteConfig(
              MainBarScreen.name,
              path: 'mainbar',
              parent: BottomNavBAR.name,
            ),
            _i13.RouteConfig(
              FavoritesBarScreen.name,
              path: 'favoritebar',
              parent: BottomNavBAR.name,
            ),
            _i13.RouteConfig(
              CartBarScreen.name,
              path: 'cartbar',
              parent: BottomNavBAR.name,
            ),
            _i13.RouteConfig(
              NotificationBarScreen.name,
              path: 'notificationbar',
              parent: BottomNavBAR.name,
            ),
            _i13.RouteConfig(
              ProfileBarScreen.name,
              path: 'profilebar',
              parent: BottomNavBAR.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.StartPage]
class StartRoute extends _i13.PageRouteInfo<void> {
  const StartRoute()
      : super(
          StartRoute.name,
          path: '/',
        );

  static const String name = 'StartRoute';
}

/// generated route for
/// [_i2.IntroSliderPage]
class IntroSliderRoute extends _i13.PageRouteInfo<void> {
  const IntroSliderRoute()
      : super(
          IntroSliderRoute.name,
          path: '/sliders',
        );

  static const String name = 'IntroSliderRoute';
}

/// generated route for
/// [_i3.RegistrationScreen]
class RegistrationScreen extends _i13.PageRouteInfo<void> {
  const RegistrationScreen()
      : super(
          RegistrationScreen.name,
          path: '/register',
        );

  static const String name = 'RegistrationScreen';
}

/// generated route for
/// [_i4.LoginScreen]
class LoginScreen extends _i13.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/login',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i5.OtpVerScreen]
class OtpVerScreen extends _i13.PageRouteInfo<void> {
  const OtpVerScreen()
      : super(
          OtpVerScreen.name,
          path: '/sms',
        );

  static const String name = 'OtpVerScreen';
}

/// generated route for
/// [_i6.CityPage]
class CityRoute extends _i13.PageRouteInfo<void> {
  const CityRoute()
      : super(
          CityRoute.name,
          path: '/city',
        );

  static const String name = 'CityRoute';
}

/// generated route for
/// [_i7.MainBarScreen]
class MainBarScreen extends _i13.PageRouteInfo<void> {
  const MainBarScreen()
      : super(
          MainBarScreen.name,
          path: 'mainbar',
        );

  static const String name = 'MainBarScreen';
}

/// generated route for
/// [_i8.FavoritesBarScreen]
class FavoritesBarScreen extends _i13.PageRouteInfo<void> {
  const FavoritesBarScreen()
      : super(
          FavoritesBarScreen.name,
          path: 'favoritebar',
        );

  static const String name = 'FavoritesBarScreen';
}

/// generated route for
/// [_i9.CartBarScreen]
class CartBarScreen extends _i13.PageRouteInfo<void> {
  const CartBarScreen()
      : super(
          CartBarScreen.name,
          path: 'cartbar',
        );

  static const String name = 'CartBarScreen';
}

/// generated route for
/// [_i10.NotificationBarScreen]
class NotificationBarScreen extends _i13.PageRouteInfo<void> {
  const NotificationBarScreen()
      : super(
          NotificationBarScreen.name,
          path: 'notificationbar',
        );

  static const String name = 'NotificationBarScreen';
}

/// generated route for
/// [_i11.ProfileBarScreen]
class ProfileBarScreen extends _i13.PageRouteInfo<void> {
  const ProfileBarScreen()
      : super(
          ProfileBarScreen.name,
          path: 'profilebar',
        );

  static const String name = 'ProfileBarScreen';
}

/// generated route for
/// [_i12.BottomNavBAR]
class BottomNavBAR extends _i13.PageRouteInfo<void> {
  const BottomNavBAR({List<_i13.PageRouteInfo>? children})
      : super(
          BottomNavBAR.name,
          path: '/bottomMenu',
          initialChildren: children,
        );

  static const String name = 'BottomNavBAR';
}

import 'package:docdoc/core/routing/routes.dart';
import 'package:flutter/material.dart';
import '../../feature/login/presentation/login_screen.dart';
import '../../feature/on_boarding/on_boarding_screen.dart';


class AppRouter {

  Route generateRoute(RouteSettings settings){

    switch(settings.name){

      case AppRouteString.onBoardingScreen :
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case AppRouteString.loginScreen :
        return MaterialPageRoute(builder: (_) => const LoginScreen());


      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));

    }
  }

}
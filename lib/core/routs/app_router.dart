import 'package:coffe_shop/core/routs/routing.dart';
import 'package:coffe_shop/features/home/presentation/view/home.dart';
import 'package:coffe_shop/features/no_route/no_route.dart';
import 'package:coffe_shop/features/onboarding/presentation/view/onboarding.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routing.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoarding(),
        );
      case Routing.homeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );

        default:
        return MaterialPageRoute(
          builder: (_) => const NoRouting(),
        );
    }
  }
}

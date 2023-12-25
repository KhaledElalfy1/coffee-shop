import 'package:coffe_shop/core/models/coffee_model.dart';
import 'package:coffe_shop/core/routs/routing.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view/buy_coffee.dart';
import 'package:coffe_shop/features/details/presentation/view/details_view.dart';
import 'package:coffe_shop/features/details/presentation/view_model/pick_coffee_size_cubit/pick_coffee_size_cubit.dart';
import 'package:coffe_shop/features/home/presentation/view/home.dart';
import 'package:coffe_shop/features/no_route/no_route.dart';
import 'package:coffe_shop/features/onboarding/presentation/view/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routing.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoarding(),
        );
      case Routing.homeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      case Routing.detailView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => PickCoffeeSizeCubit(),
            child: DetailsView(coffeeModel: arguments as CoffeeModel),
          ),
        );
      case Routing.buyCoffeeView:
        return MaterialPageRoute(
          builder: (_) => BuyCoffee(coffeeModel: arguments as CoffeeModel),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const NoRouting(),
        );
    }
  }
}

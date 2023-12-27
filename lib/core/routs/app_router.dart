import 'package:coffe_shop/core/models/coffee_model.dart';
import 'package:coffe_shop/core/routs/routing.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view/buy_coffee.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view_model/order_coffee_cubit/order_coffee_cubit_cubit.dart';

import 'package:coffe_shop/features/details/presentation/view/details_view.dart';
import 'package:coffe_shop/features/details/presentation/view_model/pick_coffee_size_cubit/pick_coffee_size_cubit.dart';
import 'package:coffe_shop/features/home/presentation/view/home.dart';
import 'package:coffe_shop/features/no_route/no_route.dart';
import 'package:coffe_shop/features/onboarding/presentation/view/onboarding.dart';
import 'package:coffe_shop/features/order_done/presentation/view/order_done.dart';
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
        if (arguments != null && arguments is Map<String, dynamic>) {
          CoffeeModel coffeeModel = arguments['coffeeModel'] as CoffeeModel;
          double totalPrice = (arguments['totalPrice'] as num)
              .toDouble(); // Handle any number type (int, double)

          return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => OrderCoffeeCubit(),
              child:
                  BuyCoffee(coffeeModel: coffeeModel, totalPrice: totalPrice),
            ),
          );
        } else {
          // Handle the case when arguments are null or not of the expected type
          return MaterialPageRoute(
            builder: (_) => const NoRouting(),
          );
        }
      case Routing.orderDone:
        return MaterialPageRoute(
          builder: (_) => const OrderDone(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const NoRouting(),
        );
    }
  }
}

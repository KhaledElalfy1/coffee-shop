import 'package:coffe_shop/core/helpers/extentions.dart';
import 'package:coffe_shop/core/models/coffee_model.dart';
import 'package:flutter/material.dart';

class BuyCoffee extends StatelessWidget {
  const BuyCoffee({super.key, required this.coffeeModel});
  final CoffeeModel coffeeModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Order'),
      ),
    );
  }
}


import 'package:coffe_shop/features/home/presentation/view/widgets/coffee_detail_container.dart';
import 'package:coffe_shop/features/home/presentation/view/widgets/coffee_type_container.dart';
import 'package:coffe_shop/features/home/presentation/view/widgets/info_container.dart';
import 'package:coffe_shop/features/home/presentation/view/widgets/last_added_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> coffeeTypes = [
    'Espresso',
    'Cappuccino',
    'Latte',
    'Macchiato',
    'Americano',
    'Mocha',
  ];
  List coffeeInGrid = [
    ['assets/images/coffee1.png', 'Cappuccino', 'with Chocolate', 4.53],
    ['assets/images/coffee2.png', 'Cappuccino', 'with Oat Milk', 3.90],
    ['assets/images/coffee3.png', 'Cappuccino', 'with Oat Milk', 5.0],
    ['assets/images/coffee4.png', 'Cappuccino', 'with Oat Milk', 5.50],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics:const BouncingScrollPhysics(),
          children: [
            const Stack(
              clipBehavior: Clip.none,
              children: [
                InfoContainer(),
                Positioned(
                  left: 30,
                  bottom: -70,
                  child: LastAddedContainer(),
                ),
              ],
            ),
            Gap(96.h),
            SizedBox(
              height: 38.h,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: coffeeTypes.length,
                itemBuilder: (context, index) {
                  return CoffeeTypeContainer(coffeeTypes: coffeeTypes[index]);
                },
              ),
            ),
            Gap(24.h),
            Expanded(
              child: GridView.builder(
                itemCount: coffeeInGrid.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .7,
                ),
                itemBuilder: (context, index) {
                  return CoffeeDetailContainer(
                    imagePath: coffeeInGrid[index][0],
                    coffeeType: coffeeInGrid[index][1],
                    coffeeFlavor: coffeeInGrid[index][2],
                    price: coffeeInGrid[index][3],
                    onPressed: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:coffe_shop/core/helpers/extentions.dart';
import 'package:coffe_shop/core/helpers/lists.dart';
import 'package:coffe_shop/core/routs/routing.dart';

import 'package:coffe_shop/features/home/presentation/view/widgets/coffee_detail_container.dart';
import 'package:coffe_shop/features/home/presentation/view/widgets/coffee_type_container.dart';
import 'package:coffe_shop/features/home/presentation/view/widgets/info_container.dart';
import 'package:coffe_shop/features/home/presentation/view/widgets/last_added_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
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
                itemCount: CoffeeLists.coffeeTypes.length,
                itemBuilder: (context, index) {
                  return CoffeeTypeContainer(
                      coffeeTypes: CoffeeLists.coffeeTypes[index]);
                },
              ),
            ),
            Gap(24.h),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: CoffeeLists.coffee.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .7,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.pushNamed(Routing.detailView,argument: CoffeeLists.coffee[index]);
                  },
                  child: CoffeeDetailContainer(
                    coffeeModel: CoffeeLists.coffee[index],
                    onPressed: () {},
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:coffe_shop/core/helpers/extentions.dart';
import 'package:coffe_shop/core/models/coffee_model.dart';

import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view/widgets/delivery_kind.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

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
        title: Text(
          'Order',
          style: AppFonts.semiBold18Black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: ListView(
          children: [
            Gap(25.h),
            const CustomDeliveryContainer(),
          ],
        ),
      ),
    );
  }
}


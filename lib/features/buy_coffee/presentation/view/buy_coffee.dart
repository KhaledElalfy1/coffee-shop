import 'package:coffe_shop/core/helpers/extentions.dart';
import 'package:coffe_shop/core/models/coffee_model.dart';
import 'package:coffe_shop/core/utils/app_color.dart';

import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view/widgets/delevry_action.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view/widgets/delivery_kind.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BuyCoffee extends StatefulWidget {
  const BuyCoffee({super.key, required this.coffeeModel});
  final CoffeeModel coffeeModel;

  @override
  State<BuyCoffee> createState() => _BuyCoffeeState();
}

class _BuyCoffeeState extends State<BuyCoffee> {
  List<bool> isSelected = [true, false];
  bool vertical = false; // for rotation
  List<Text> buttons = const [Text('Delivered'), Text('Pick Up')];
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
            Container(
              child: ToggleButtons(
                  direction: vertical ? Axis.vertical : Axis.horizontal,
                  isSelected: isSelected,
                  onPressed: (index) {
                    setState(() {
                      for (var i = 0; i < isSelected.length; i++) {
                        isSelected[i] = i == index;
                      }
                    });
                  },
                  color: Colors.black, // unselected item color
                  borderRadius: BorderRadius.circular(14.r),
                  fillColor: ColorManger.switchColor,
                  selectedColor: Colors.white,
                  constraints: BoxConstraints(
                    minHeight: 48.0.h,
                    minWidth: 150.0.w,
                  ),
                  children: buttons
                  //  [
                  //   ActionContainer(
                  //     color: ColorManger.switchColor,
                  //     text: 'Deliver',
                  //     textStyle: AppFonts.semiBold16LightBlack
                  //         .copyWith(color: Colors.white),
                  //   ),
                  //   ActionContainer(
                  //     color: ColorManger.gary,
                  //     text: 'Pick up',
                  //     textStyle: AppFonts.regular16Black,
                  //   ),
                  // ],
                  ),
            )
          ],
        ),
      ),
    );
  }
}

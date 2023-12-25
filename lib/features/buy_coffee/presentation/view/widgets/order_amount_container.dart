import 'package:coffe_shop/core/models/coffee_model.dart';
import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view_model/order_coffee_cubit/order_coffee_cubit_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OrderAmount extends StatelessWidget {
  const OrderAmount({
    super.key,
    required this.coffeeModel,
    this.increment,
    this.decrement,
  });

  final CoffeeModel coffeeModel;
  final void Function()? increment;
  final void Function()? decrement;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315.w,
      height: 55.h,
      child: Row(
        children: [
          Image.asset(
            coffeeModel.image,
            height: 54,
          ),
          Gap(12.w),
          Column(
            children: [
              Text(
                coffeeModel.type,
                style: AppFonts.semiBold16Black,
              ),
              Text(coffeeModel.type, style: AppFonts.regular12LightBlack),
            ],
          ),
          Gap(40.w),
          IconButton(
            onPressed: decrement,
            icon: Icon(
              Icons.remove_circle_outline_outlined,
              color: const Color(0xffAAADB0),
              size: 28.sp,
            ),
          ),
          Text(
            '${BlocProvider.of<OrderCoffeeCubit>(context).count}',
            style: AppFonts.semiBold14whit.copyWith(color: Colors.black),
          ),
          IconButton(
            onPressed: increment,
            icon: Icon(
              Icons.add_circle_outline,
              color: const Color(0xffAAADB0),
              size: 28.sp,
            ),
          ),
        ],
      ),
    );
  }
}

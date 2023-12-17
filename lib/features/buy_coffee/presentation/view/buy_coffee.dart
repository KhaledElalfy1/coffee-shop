import 'package:coffe_shop/core/helpers/extentions.dart';
import 'package:coffe_shop/core/models/coffee_model.dart';
import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view/widgets/coupon_container.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view/widgets/custom_buy_container.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view/widgets/order_amount_container.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view/widgets/payment_services_row.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view/widgets/toggle_button.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view/widgets/total_price_container.dart';
import 'package:coffe_shop/features/onboarding/presentation/view/widgets/custom_elevation_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(25.h),
                const CustomToggleButton(),
                Gap(24.h),
                Text(
                  'Delivery Address',
                  style: AppFonts.semiBold18Black,
                ),
                Gap(16.h),
                Text(
                  'Jl. Kpg Sutoyo',
                  style: AppFonts.semiBold14whit.copyWith(
                    color: const Color(0xff303336),
                  ),
                ),
                Text(
                  'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                  style: AppFonts.regular12LightBlack,
                ),
                Gap(16.h),
                Row(
                  children: [
                    const CustomOrderInfoContainer(
                      imageSvgPAth: 'assets/images/edit.svg',
                      text: 'Edit Address',
                    ),
                    Gap(9.w),
                    const CustomOrderInfoContainer(
                      imageSvgPAth: 'assets/images/note.svg',
                      text: 'Add Note',
                    ),
                  ],
                ),
                const Divider(
                  color: Color(0xffEAEAEA),
                  thickness: 2,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: OrderAmount(
                    coffeeModel: coffeeModel,
                    increment: () {},
                    decrement: () {},
                  ),
                ),
                const Divider(
                  color: Color(0xffF4F4F4),
                  thickness: 4,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: const CouponContainer(),
                ),
                Text(
                  'Payment Summary',
                  style: AppFonts.semiBold16Black,
                ),
                PaymentServiceRow(
                  price: coffeeModel.price,
                  services: 'Price',
                  isDiscounted: false,
                ),
                const PaymentServiceRow(
                  price: 2,
                  services: 'Delivery Fee',
                  isDiscounted: true,
                  discount: 1,
                ),
                const Divider(
                  color: Color(0xffEAEAEA),
                ),
                const PaymentServiceRow(
                  price: 5,
                  services: 'Total payment',
                  isDiscounted: false,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 16.h),
            width: double.infinity,
            height: 161.h,
            decoration: BoxDecoration(
              color: const Color(0xffF1F1F1),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/moneys.svg'),
                    Gap(12.w),
                    const TotalPriceContainer(),
                    const Spacer(),
                    SvgPicture.asset('assets/images/dots.svg')
                  ],
                ),
                Gap(16.h),
                CustomElevationButton(
                  text: 'Order',
                  radius: 16,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

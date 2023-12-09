import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_color.dart';

class CoffeeTypeContainer extends StatelessWidget {
  const CoffeeTypeContainer({
    super.key,
    required this.coffeeTypes,
  });

  final String coffeeTypes;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 8.w),
        width: 121.w,
        height: 38.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: ColorManger.primaryColor,
        ),
        child: Text(
          coffeeTypes,
          style: AppFonts.semiBold14whit,
        ),
      ),
    );
  }
}

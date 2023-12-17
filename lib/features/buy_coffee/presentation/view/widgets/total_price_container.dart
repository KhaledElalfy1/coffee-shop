import 'package:coffe_shop/core/utils/app_color.dart';
import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TotalPriceContainer extends StatelessWidget {
  const TotalPriceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112.w,
      height: 24.h,
      decoration: BoxDecoration(
        color: const Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 51.w,
            height: 24.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorManger.primaryColor,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Text(
              'Cash',
              style: AppFonts.regular12LightGray.copyWith(color: Colors.white),
            ),
          ),
          Text(
            '\$ 5.53',
            style: AppFonts.regular12LightBlack.copyWith(color: Colors.black),
          ),
          Gap(8.w),
        ],
      ),
    );
  }
}

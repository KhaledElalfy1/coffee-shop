import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CouponContainer extends StatelessWidget {
  const CouponContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.w,
      height: 56.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffEAEAEA),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Row(
        children: [
          Gap(16.w),
          SvgPicture.asset(
            'assets/images/Discount.svg',
          ),
          Gap(12.w),
          Text(
            '1 Discount is applied',
            style: AppFonts.semiBold14whit.copyWith(color: Colors.black),
          ),
          Gap(70.w),
          const Icon(
            Icons.arrow_forward_ios,
          ),
        ],
      ),
    );
  }
}

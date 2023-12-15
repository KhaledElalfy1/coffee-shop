import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomOrderContainer extends StatelessWidget {
  const CustomOrderContainer({
    super.key,
    required this.imageSvgPAth,
    required this.text,
  });
  final String imageSvgPAth, text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      width: 130.w,
      height: 30.h,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffDEDEDE)),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          SvgPicture.asset(imageSvgPAth),
          Gap(5.w),
          Text(
            text,
            style: AppFonts.regular12LightGray.copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }
}

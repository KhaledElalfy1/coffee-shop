import 'package:coffe_shop/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSettingSearchContainer extends StatelessWidget {
  const CustomSettingSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.w),
      width: 44.w,
      height: 44.h,
      decoration: BoxDecoration(
        color: ColorManger.primaryColor,
        borderRadius: BorderRadius.circular(
          8.r,
        ),
      ),
      child: const Icon(Icons.tune),
    );
  }
}

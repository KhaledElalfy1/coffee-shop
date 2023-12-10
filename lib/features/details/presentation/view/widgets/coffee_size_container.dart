import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoffeeSizeContainer extends StatelessWidget {
  const CoffeeSizeContainer({super.key, required this.size});
  final String size;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        margin: EdgeInsets.only(left: 8.w),
        width: 96.w,
        height: 43.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: const Color(0xff2F2D2C),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          size,
          style: AppFonts.regular14Black,
        ),
      ),
    );
  }
}

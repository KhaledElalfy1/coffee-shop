import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RateContainer extends StatelessWidget {
  const RateContainer({
    super.key,
    required this.rate,
  });

  final double rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 51.w,
      height: 25.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          bottomRight: Radius.circular(16.r),
        ),
        color: const Color(0xff383742),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 20.sp,
          ),
          Text(
            rate.toString(),
            style: AppFonts.semiBold10whit,
          )
        ],
      ),
    );
  }
}

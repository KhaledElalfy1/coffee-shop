import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferText extends StatelessWidget {
  const OfferText({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.color,
    required this.textStyle,
  });
  final double width, height;
  final String text;
  final Color color;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Text(
        text,
        style: textStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}

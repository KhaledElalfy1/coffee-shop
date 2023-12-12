import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActionContainer extends StatelessWidget {
  const ActionContainer({
    super.key,
    required this.color,
    required this.text,
    required this.textStyle,
  });
  // final double width, height;
  final Color color;
  final String text;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135.5.w,
      height: 40.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}

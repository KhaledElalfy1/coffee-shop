import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevationButton extends StatelessWidget {
  const CustomElevationButton({
    super.key,
    this.onPressed,
    required this.text,
    required this.radius,
  });
  final void Function()? onPressed;
  final String text;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          const Size(315, 62),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
      child: Text(
        text,
        style: AppFonts.semiBold14whit.copyWith(
          fontSize: 16.sp,
        ),
      ),
    );
  }
}

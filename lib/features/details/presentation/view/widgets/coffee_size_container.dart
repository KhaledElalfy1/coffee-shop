import 'package:coffe_shop/core/utils/app_color.dart';
import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoffeeSizeContainer extends StatelessWidget {
  const CoffeeSizeContainer(
      {super.key, required this.size, this.onTap, required this.isSelected});
  final String size;
  final Function()? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(left: 8.w),
          width: 96.w,
          height: 43.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected
                ? ColorManger.primaryColor.withOpacity(.2)
                : Colors.transparent,
            border: Border.all(
              color: isSelected
                  ? ColorManger.primaryColor
                  : const Color(0xff2F2D2C),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            size,
            style: isSelected
                ? AppFonts.regular14Black
                    .copyWith(color: ColorManger.primaryColor)
                : AppFonts.regular14Black,
          ),
        ),
      ),
    );
  }
}

import 'package:coffe_shop/core/utils/app_color.dart';
import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:coffe_shop/features/buy_coffee/presentation/view/widgets/delevry_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDeliveryContainer extends StatelessWidget {
  const CustomDeliveryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 4.w),
        width: 315.w,
        height: 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          color: ColorManger.gary,
        ),
        child: Row(
          children: [
            ActionContainer(
              color: ColorManger.switchColor,
              text: 'Deliver',
              textStyle:
                  AppFonts.semiBold16LightBlack.copyWith(color: Colors.white),
            ),
            ActionContainer(
              color: ColorManger.gary,
              text: 'Pick up',
              textStyle: AppFonts.regular16Black,
            ),
          ],
        ),
      ),
    );
  }
}

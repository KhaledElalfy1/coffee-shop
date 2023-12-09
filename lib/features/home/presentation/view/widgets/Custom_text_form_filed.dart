
import 'package:coffe_shop/core/utils/app_color.dart';
import 'package:coffe_shop/features/home/presentation/view/widgets/cutom_setting_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManger.gradientBlack2,
        borderRadius: BorderRadius.circular(
          16.r,
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
            size: 25.sp,
          ),
          suffixIcon:const CustomSettingSearchContainer(),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}


import 'package:coffe_shop/core/utils/app_color.dart';
import 'package:coffe_shop/features/home/presentation/view/widgets/Custom_text_form_filed.dart';

import 'package:coffe_shop/features/home/presentation/view/widgets/custom_info_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorManger.gradientBlack1,
            ColorManger.gradientBlack2,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0.w),
        child: Column(
          children: [
            const PersonalInfoRow(),
            Gap(24.h),
            const CustomTextFormFiled(),
          ],
        ),
      ),
    );
  }
}

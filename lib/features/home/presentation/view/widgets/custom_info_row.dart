
import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PersonalInfoRow extends StatelessWidget {
  const PersonalInfoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(18.h),
            Text(
              'Location',
              style: AppFonts.regular12LightGray,
            ),
            Text(
              'Bilzen, Tanjungbalai',
              style: AppFonts.semiBold16LightBlack,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0.h),
          child: Image.asset(
            'assets/images/profile_pic.png',
            height: 60,
          ),
        ),
      ],
    );
  }
}

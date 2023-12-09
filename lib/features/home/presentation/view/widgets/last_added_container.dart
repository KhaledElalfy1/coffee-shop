import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:coffe_shop/features/home/presentation/view/widgets/offer_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastAddedContainer extends StatelessWidget {
  const LastAddedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(16.r),
      ),
      child: Stack(
        children: [
          Container(
            width: 315.w,
            height: 140.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16.r,
              ),
            ),
            child: Image.asset(
              'assets/images/last_added_coffe.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: 32,
            top: 13,
            child: OfferText(
              width: 60,
              height: 26,
              text: 'Promo',
              color: Colors.red,
              textStyle: AppFonts.semiBold14whit,
            ),
          ),
          Positioned(
            left: 24,
            top: 47,
            child: OfferText(
              width: 200,
              height: 80,
              text: 'Buy one get\n one FREE',
              color: Colors.black,
              textStyle: AppFonts.semiBold32whit,
            ),
          )
        ],
      ),
    );
  }
}

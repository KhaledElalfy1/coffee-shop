import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PaymentServiceRow extends StatelessWidget {
  const PaymentServiceRow({
    super.key,
    required this.price,
    required this.services,
    this.discount,
    required this.isDiscounted,
  });

  final double price;
  final String services;
  final double? discount;
  final bool isDiscounted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Row(
        children: [
          Text(
            services,
            style: AppFonts.regular14Black,
          ),
          const Expanded(child: SizedBox()),
          isDiscounted
              ? Text(
                  '\$ $discount',
                  style: AppFonts.regular14Black.copyWith(
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.black,
                    decorationThickness: 2.0,
                  ),
                )
              : const Text(''),
          Gap(8.w),
          Text(
            '\$ $price',
            style: AppFonts.semiBold16Black,
          ),
        ],
      ),
    );
  }
}

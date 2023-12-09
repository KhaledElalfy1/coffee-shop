import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CoffeeDetailContainer extends StatelessWidget {
  const CoffeeDetailContainer({
    super.key,
    required this.imagePath,
    required this.coffeeType,
    required this.coffeeFlavor,
    required this.price,
    this.onPressed,
  });
  final String imagePath, coffeeType, coffeeFlavor;
  final double price;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        width: 149.w,
        height: 260.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Image.asset(imagePath),
            Gap(16.h),
            Text(
              coffeeType,
              style: AppFonts.semiBold16Black,
            ),
            Text(
              coffeeFlavor,
              style: AppFonts.regular12LightBlack,
            ),
            Gap(12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$$price',
                  style: AppFonts.semiBold16Black,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  onPressed: onPressed,
                  child: const Icon(Icons.add),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

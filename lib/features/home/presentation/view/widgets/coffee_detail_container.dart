import 'package:coffe_shop/core/models/coffee_model.dart';
import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:coffe_shop/features/home/presentation/view/widgets/rate_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CoffeeDetailContainer extends StatelessWidget {
  const CoffeeDetailContainer({
    super.key,
    this.onPressed,
    required this.coffeeModel,
  });

  final CoffeeModel coffeeModel;
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
            Stack(
              children: [
                Image.asset(coffeeModel.image),
                RateContainer(rate: coffeeModel.rate)
              ],
            ),
            Gap(16.h),
            Text(
              coffeeModel.type,
              style: AppFonts.semiBold16Black,
            ),
            Text(
              coffeeModel.component,
              style: AppFonts.regular12LightBlack,
            ),
            Gap(12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$${coffeeModel.price}',
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
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

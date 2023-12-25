import 'package:coffe_shop/core/helpers/extentions.dart';
import 'package:coffe_shop/core/routs/routing.dart';
import 'package:coffe_shop/features/onboarding/presentation/view/widgets/custom_elevation_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OrderDone extends StatefulWidget {
  const OrderDone({super.key});

  @override
  State<OrderDone> createState() => _OrderDoneState();
}

class _OrderDoneState extends State<OrderDone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          Image.asset(
            'assets/images/R.gif',
          ),
          const Spacer(),
          CustomElevationButton(
            text: 'Make another order',
            onPressed: () {
              context.pushReplacementNamed(Routing.homeView);
            },
            radius: 16,
          ),
          Gap(40.h),
        ],
      ),
    );
  }
}

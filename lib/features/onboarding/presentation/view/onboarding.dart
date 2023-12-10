import 'package:coffe_shop/core/helpers/extentions.dart';
import 'package:coffe_shop/core/routs/routing.dart';
import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:coffe_shop/features/onboarding/presentation/view/widgets/custom_elevation_button.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset('assets/images/coffee.png'),
              Positioned(
                bottom: -70,
                left: 50,
                child: Text(
                  'Coffee so good,\n your taste buds\n will love it.',
                  textAlign: TextAlign.center,
                  style: AppFonts.semiBold34White,
                ),
              )
            ],
          ),
          const Gap(80),
          Text(
            'The best grain, the finest roast, the\n powerful flavor.',
            textAlign: TextAlign.center,
            style: AppFonts.regular14Gray,
          ),
          const Gap(24),
          CustomElevationButton(
            text: 'Get Started',
            radius: 32,
            onPressed: () {
            context.pushNamed(Routing.homeView);
          }),
        ],
      ),
    );
  }
}

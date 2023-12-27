import 'package:coffe_shop/core/helpers/extentions.dart';
import 'package:coffe_shop/core/models/coffee_model.dart';
import 'package:coffe_shop/core/routs/routing.dart';
import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:coffe_shop/features/details/presentation/view/widgets/coffee_size_container.dart';
import 'package:coffe_shop/features/details/presentation/view_model/pick_coffee_size_cubit/pick_coffee_size_cubit.dart';
import 'package:coffe_shop/features/onboarding/presentation/view/widgets/custom_elevation_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:readmore/readmore.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.coffeeModel});
  final CoffeeModel coffeeModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Text('Details'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_rounded,
              size: 30.sp,
            ),
          ),
        ],
      ),
      body: BlocBuilder<PickCoffeeSizeCubit, PickCoffeeSizeState>(
        builder: (context, state) {
          var fromCubit = BlocProvider.of<PickCoffeeSizeCubit>(context);
          return ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      child: SizedBox(
                        width: 315.w,
                        height: 226.h,
                        child: Image.asset(
                          coffeeModel.image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Gap(20.h),
                    Text(
                      coffeeModel.type,
                      style: AppFonts.semiBold18Black.copyWith(fontSize: 20.sp),
                    ),
                    Text(
                      coffeeModel.component,
                      style: AppFonts.regular12LightGray,
                    ),
                    Gap(16.h),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30.sp,
                        ),
                        Gap(4.w),
                        Text(
                          coffeeModel.rate.toString(),
                          style: AppFonts.semiBold16Black,
                        ),
                        Gap(4.w),
                        Text(
                          '( ${coffeeModel.numberOfReviewers} )',
                          style: AppFonts.regular14Gray,
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color(0xffEAEAEA),
                      thickness: 2,
                    ),
                    Gap(20.h),
                    Text(
                      'Description',
                      style: AppFonts.semiBold16Black,
                    ),
                    ReadMoreText(
                      coffeeModel.description,
                      trimLines: 2,
                      trimCollapsedText: 'Read More',
                      trimExpandedText: '...Read Less',
                      moreStyle: AppFonts.semiBold14whit.copyWith(
                        color: const Color(0xffC67C4E),
                      ),
                    ),
                    Gap(20.h),
                    Text(
                      'Size',
                      style: AppFonts.semiBold16Black,
                    ),
                    Gap(12.h),
                    Row(
                      children: [
                        CoffeeSizeContainer(
                          size: 'S',
                          isSelected: fromCubit.small,
                          onTap: () {
                            fromCubit.pickCoffeeSize(
                                size: 'S', price: coffeeModel.price);
                          },
                        ),
                        CoffeeSizeContainer(
                          size: 'M',
                          isSelected: fromCubit.medium,
                          onTap: () {
                            fromCubit.pickCoffeeSize(
                                size: 'M', price: coffeeModel.price);
                          },
                        ),
                        CoffeeSizeContainer(
                          size: 'L',
                          isSelected: fromCubit.large,
                          onTap: () {
                            fromCubit.pickCoffeeSize(
                                size: 'L', price: coffeeModel.price);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(17.h),
              Container(
                width: double.infinity,
                height: 121.h,
                decoration: const BoxDecoration(
                  color: Color(0xffF1F1F1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      16,
                    ),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Price',
                            style: AppFonts.regular14Gray,
                          ),
                          Gap(8.h),
                          SizedBox(
                            height: 49.h,
                            width: 60.w,
                            child: Text(
                              '\$ ${fromCubit.totalPrice}',
                              style: AppFonts.semiBold18Brown,
                            ),
                          )
                        ],
                      ),
                      Gap(35.w),
                      SizedBox(
                        width: 217.w,
                        child: CustomElevationButton(
                          radius: 16,
                          text: 'Bye Now',
                          onPressed: fromCubit.totalPrice == 0
                              ? null
                              : () {
                                  context.pushNamed(
                                    Routing.buyCoffeeView,
                                    argument: {
                                      'coffeeModel': coffeeModel,
                                      'totalPrice': fromCubit.totalPrice,
                                    },
                                  );
                                },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

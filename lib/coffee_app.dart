import 'package:coffe_shop/core/routs/app_router.dart';
import 'package:coffe_shop/core/routs/routing.dart';
import 'package:coffe_shop/core/utils/app_color.dart';
import 'package:coffe_shop/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoffeeApp extends StatelessWidget {
  final AppRouter appRouter;
  const CoffeeApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routing.onboarding,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            centerTitle: true,
            color: Colors.white,
            elevation: 0,
            titleTextStyle: AppFonts.semiBold18Black,
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
          ),
          primaryColor: ColorManger.primaryColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              ColorManger.primaryColor,
            ),
            textStyle: MaterialStateProperty.all(AppFonts.elevationButtonStyle),
          )),
          fontFamily: 'Sora',
        ),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}

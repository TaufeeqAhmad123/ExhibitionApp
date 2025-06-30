import 'dart:math';

import 'package:animate_do/animate_do.dart' hide Bounce;
import 'package:exhibition_app/screen/home/home_screen.dart';
import 'package:exhibition_app/utils/constant/app_assets.dart';
import 'package:exhibition_app/utils/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bounce/bounce.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.kOnboarding),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.kBlackColor.withValues(alpha: 0.0),
                    AppColors.kBlackColor,
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BounceInDown(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 600),
                  child: Text(
                    "A Virtual World of \nThe Greatest \nPainting",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: AppColors.kWhiteColor,
                      height: 0,
                      wordSpacing: 0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 20.h),
                BounceInDown(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 800),
                  child: Text(
                    "Explore the world of art like never before. \nExperience the beauty of paintings in a virtual \nenvironment.",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.kWhiteColor.withValues(alpha: 0.7),
                      height: 1.5,
                      wordSpacing: 0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 20.h),
                BounceInUp(
                          controller: (controller) => controller = controller,
                      delay: const Duration(milliseconds: 800),
                  child: Bounce(
                    scale: true,
                    scaleFactor: 0.90,
                    tilt: true,
                    tiltAngle: pi / 10,
                    child: ElevatedButton(
                      onPressed: () =>Get.offAll(()=>HomeScreen()),
                      child: Text(
                        'Get Started',
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.kWhiteColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Row(
                //   children: [
                //     BounceInUp(
                //       controller: (controller) => controller = controller,
                //       delay: const Duration(milliseconds: 800),
                //       child: CircleAvatar(
                //         radius: 20.r,
                //         backgroundColor:
                //             AppColors.kWhiteColor.withValues(alpha: 0.5),
                //         child: Icon(
                //           Icons.arrow_back_ios_new,
                //           color: AppColors.kBlackColor,
                //         ),
                //       ),
                //     ),
                //     SizedBox(width: 14.w),
                //     BounceInUp(
                //       controller: (controller) => controller = controller,
                //       delay: const Duration(milliseconds: 1300),
                //       child: CircleAvatar(
                //         radius: 20.r,
                //         backgroundColor: AppColors.kWhiteColor,
                //         child: GestureDetector(
                //           onTap: () {
                //            // Get.offAll(() => BottomNavbarWidget());
                //           },
                //           child: Icon(
                //             Icons.arrow_forward_ios,
                //             color: AppColors.kBlackColor,
                //           ),
                //         ),
                //       ),
                //     )
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

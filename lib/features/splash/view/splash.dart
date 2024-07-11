import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/constants/assets_pathes.dart';
import '../../navbar/view/navbar_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      checkLoginStatus();
    });
  }

  void checkLoginStatus() async {
    final storedValue = await CacheHelper.getData('userId');
    print(storedValue);
    if (storedValue != null && storedValue.isNotEmpty) {
      Get.offAll(const NavBar());
    } else {
      Get.offAll(const NavBar());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColor.primaryColor,
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            color:AppColor.primaryColor,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: Get.width.w,
                  height: 388.h,
                  child: SvgPicture.asset(
                    AssetsPathes.appLogo,
                  ).animate().fade().slideY(
                      duration: const Duration(milliseconds: 500),
                      begin: 1,
                      curve: Curves.easeInSine),
                ),
                20.verticalSpace,
              ],
            ),
          ),
        ));
  }
}

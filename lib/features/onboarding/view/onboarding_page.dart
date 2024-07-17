import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../login/view/login_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<Widget> _buildPageIndicator() {
    return List<Widget>.generate(3, (int index) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        height: 8.0,
        width: _currentPage == index ? 24.0 : 16.0,
        decoration: BoxDecoration(
          color: _currentPage == index ? AppColor.primaryColor : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
      );
    });
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.whiteColor,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            color: AppColor.whiteColor,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(16.w),
                    child: TextButton(
                      onPressed: () {
                        CacheHelper.saveData("onboarding", "onboarded");
                        Get.off(const LoginPage(),
                            transition: Transition.cupertino);
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColor.primaryColor,
                          fontFamily: "poppinsSemiBold",
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      children: [
                        buildPage(
                          title: "Welcome",
                          description: "Welcome to our app. Let's get started!",
                          imagePath: "assets/images/bot_image.jpg",
                        ),
                        buildPage(
                          title: "Explore",
                          description:
                              "Discover new features and functionalities.",
                          imagePath: "assets/images/bot_image.jpg",
                        ),
                        buildPage(
                          title: "Get Started",
                          description: "Ready to dive in? Let's get going!",
                          imagePath: "assets/images/bot_image.jpg",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15.0),
                      elevation: 5.0,
                      child: Ink(
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: InkWell(
                          onTap: () async {
                            if (_currentPage == 2) {
                              CacheHelper.saveData("onboarding", "onboarded");
                              Get.off(const LoginPage(),
                                  transition: Transition.cupertino);
                            } else {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          child: Container(
                            width: 130,
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              _currentPage == 2 ? "Get Started" : "Next",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: AppColor.whiteColor,
                                fontFamily: "poppinsSemiBold",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPage(
      {required String title,
      required String description,
      required String imagePath}) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 250.h,
            width: Get.width.w,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 24.h),
          Text(
            title,
            style: TextStyle(fontSize: 24.sp, fontFamily: "poppinsBold"),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          Text(
            description,
            style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey,
                fontFamily: "poppinsRegular"),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

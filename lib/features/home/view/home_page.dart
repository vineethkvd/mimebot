import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mimebot/features/new_course/view/more_new_video.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../../new_course/controller/new_course_controller.dart';
import '../../slider/controller/slider_controller.dart';
import '../../slider/view/widget/slider_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SliderController sliderController = Get.put(SliderController());
  final NewCourseController newCourseController =
      Get.put(NewCourseController());

  @override
  void initState() {
    call();
    super.initState();
  }

  void call() {
    sliderController.fetchSliderData();
    newCourseController.fetchNewCourseVideo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 200, child: SliderWidget()),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Newly Added Videos",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColor.blackTextColor,
                    fontFamily: "poppinsSemiBold",
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const NewlyAddedVideo(),transition: Transition.cupertino);
                  },
                  child: Text(
                    "See More",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColor.orangeColor,
                      fontFamily: "poppinsSemiBold",
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 200,
                    child: Obx(() {
                      if (newCourseController.isLoading.value) {
                        return buildShimmerEffect();
                      } else {
                        return buildNewCourseList();
                      }
                    }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildShimmerEffect() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            margin: const EdgeInsets.all(8.0),
            width: 150.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        );
      },
    );
  }

  Widget buildNewCourseList() {
    final newCourses = newCourseController.newCourseModel.value.data;

    if (newCourses == null || newCourses.isEmpty) {
      return Center(
        child: Text(
          "No courses available",
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey,
          ),
        ),
      );
    }

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: newCourses.length,
      itemBuilder: (context, index) {
        final course = newCourses[index];
        return Container(
          margin: const EdgeInsets.all(8.0),
          width: 150.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                child: CachedNetworkImage(
                  imageUrl: course.corImg ?? '',
                  height: 100.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      height: 100.h,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                  ),
                  placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      height: 100.h,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  course.corTitle ?? '',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  course.corDesc ?? '',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

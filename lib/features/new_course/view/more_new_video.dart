import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../core/utils/configs/styles/colors.dart';
import '../controller/new_course_controller.dart';
import '../model/new_course_model.dart';

class NewlyAddedVideo extends StatefulWidget {
  const NewlyAddedVideo({Key? key}) : super(key: key);

  @override
  State<NewlyAddedVideo> createState() => _NewlyAddedVideoState();
}

class _NewlyAddedVideoState extends State<NewlyAddedVideo> {
  final NewCourseController newCourseController = Get.put(NewCourseController());
  TextEditingController searchController = TextEditingController();
  List<Data>? filteredCourses;

  @override
  void initState() {
    call();
    super.initState();
    filteredCourses = newCourseController.newCourseModel.value.data;
  }

  void call() {
    newCourseController.fetchNewCourseVideo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text(
          "Newly Uploaded Videos",
          style: TextStyle(
            fontSize: 18.sp,
            color: AppColor.whiteColor,
            fontFamily: "poppinsSemiBold",
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: searchController,
                onChanged: (value) {
                  filterCourses(value);
                },
                decoration: InputDecoration(
                  hintText: 'Search videos...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Obx(() {
                if (newCourseController.isLoading.value) {
                  return buildShimmerEffect();
                } else {
                  return buildNewCourseGrid();
                }
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildShimmerEffect() {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        childAspectRatio: 3 / 4,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        );
      },
    );
  }

  Widget buildNewCourseGrid() {
    final courses = filteredCourses ?? [];

    if (courses.isEmpty) {
      return Center(
        child: Text(
          "No videos found",
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey,
          ),
        ),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        childAspectRatio: 3 / 4,
      ),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];
        return GestureDetector(
          onTap: () {
            // Handle onTap
          },
          child: Container(
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
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: course.corImg ?? '',
                    height: 150.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    errorWidget: (context, url, error) => Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
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
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
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
          ),
        );
      },
    );
  }

  void filterCourses(String query) {
    List<Data>? filteredList = [];

    if (query.isNotEmpty) {
      filteredList = newCourseController.newCourseModel.value.data
          ?.where((course) =>
      course.corTitle?.toLowerCase().contains(query.toLowerCase()) ??
          false)
          .toList();
    } else {
      filteredList = newCourseController.newCourseModel.value.data;
    }

    setState(() {
      filteredCourses = filteredList;
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
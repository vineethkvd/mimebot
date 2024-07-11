import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/configs/styles/colors.dart';

class LessonsPage extends StatefulWidget {
  final title;
  final courseId;
  const LessonsPage({super.key, required this.title, required this.courseId});

  @override
  State<LessonsPage> createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text(
          "Saved",
          style: TextStyle(
              fontSize: 18.sp,
              color: AppColor.whiteColor,
              fontFamily: "poppinsSemiBold"),
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        color: AppColor.whiteColor,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}

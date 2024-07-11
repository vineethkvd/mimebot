import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/configs/styles/colors.dart';
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColor.primaryColor,
            automaticallyImplyLeading: false,
            leading: IconButton(onPressed: () {
              Get.back();
            }, icon: Icon(Icons.arrow_back,size: 25,color: Colors.white,)),
            centerTitle: true,
            title: Text("Notifications",style: TextStyle(
                fontSize: 18.sp,
                color: AppColor.whiteColor,
                fontFamily: "poppinsSemiBold"),),
          ),
          body: Container(
            height: Get.height,
            width: Get.width,
            color: AppColor.whiteColor,
            child: Column(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [],),
          ),
        ),
      ),
    );
  }
}

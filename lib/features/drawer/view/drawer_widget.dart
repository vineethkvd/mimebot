// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import '../../../core/utils/configs/styles/colors.dart';
//
// class DrawerWidget extends StatefulWidget {
//   const DrawerWidget({super.key});
//
//   @override
//   State<DrawerWidget> createState() => _DrawerWidgetState();
// }
//
// class _DrawerWidgetState extends State<DrawerWidget> {
//   final ProfileController profileController = ProfileController();
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     profileController.fetchProfile();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topRight: Radius.circular(20.0),
//           bottomRight: Radius.circular(20.0),
//         ),
//       ),
//       child: Container(
//         height: Get.height.h,
//         decoration: const BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//               Color(0xff141356),
//               Color(0xff0095DA),
//             ])),
//         child: SingleChildScrollView(
//           child: Wrap(
//             runSpacing: 5,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 20.sp),
//                 child: SizedBox(
//                     height: 65.sp,
//                     child: Obx(
//                       () => Column(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 20.sp),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 ClipRRect(
//                                   borderRadius: BorderRadius.circular(100),
//                                   child: Container(
//                                     color: Colors.white,
//                                     height: 60,
//                                     width: 60,
//                                     child: CachedNetworkImage(
//                                       imageUrl: profileController.profileModel
//                                               .value.data?.profilePic ??
//                                           '',
//                                       fit: BoxFit.cover,
//                                       placeholder: (context, url) =>
//                                           const Center(
//                                         child: CupertinoActivityIndicator(),
//                                       ),
//                                       errorWidget: (context, url, error) =>
//                                           const Center(
//                                         child: Icon(Icons.error),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 10.sp,
//                                 ),
//                                 Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     SizedBox(
//                                       width: 170.w,
//                                       child: Text(
//                                         profileController.profileModel.value
//                                                 .data?.userName ??
//                                             '',
//                                         style: TextStyle(
//                                             fontSize: 16.sp,
//                                             color: Colors.white,
//                                             fontFamily: "poppinsSemiBold"),
//                                         overflow: TextOverflow.ellipsis,
//                                         maxLines: 1,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 170.w,
//                                       child: Text(
//                                         profileController.profileModel.value
//                                                 .data?.userEmail ??
//                                             '',
//                                         style: TextStyle(
//                                             fontSize: 12.sp,
//                                             color: Colors.white,
//                                             fontFamily: "poppinsRegular"),
//                                         overflow: TextOverflow.ellipsis,
//                                         maxLines: 1,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     )),
//               ),
//               Divider(
//                 color: Colors.white,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 7.sp),
//                 child: InkWell(
//                   onTap: () {
//                     Get.back();
//                     Get.off(() => const ProfileScreen(),
//                         transition: Transition.cupertino);
//                   },
//                   child: Container(
//                     color: Colors.white.withOpacity(0.3),
//                     height: 50,
//                     child: ListTile(
//                       titleAlignment: ListTileTitleAlignment.center,
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             CupertinoIcons.profile_circled,
//                             size: 30.sp,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Text(
//                             "Profile",
//                             style: TextStyle(
//                                 fontSize: 16.sp,
//                                 color: Colors.white,
//                                 fontFamily: "poppinsRegular"),
//                           ),
//                         ],
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                         size: 30.sp,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 7.sp),
//                 child: InkWell(
//                   onTap: () {
//                     Get.back();
//                     Get.off(() => const LearnScreen(),
//                         transition: Transition.cupertino);
//                   },
//                   child: Container(
//                     color: Colors.white.withOpacity(0.3),
//                     height: 50,
//                     child: ListTile(
//                       titleAlignment: ListTileTitleAlignment.center,
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             CupertinoIcons.book,
//                             size: 30.sp,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Text(
//                             "Learn",
//                             style: TextStyle(
//                                 fontSize: 16.sp,
//                                 color: Colors.white,
//                                 fontFamily: "poppinsRegular"),
//                           ),
//                         ],
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                         size: 30.sp,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               /* Padding(
//                 padding: EdgeInsets.symmetric(vertical: 7.sp),
//                 child: InkWell(
//                   onTap: () {},
//                   child: Container(
//                     color: Colors.white.withOpacity(0.3),
//                     height: 50,
//                     child: ListTile(
//                       titleAlignment: ListTileTitleAlignment.center,
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             CupertinoIcons.timer,
//                             size: 30.sp,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Text(
//                             "Practice",
//                             style: TextStyle(
//                                 fontSize: 16.sp,
//                                 color: Colors.white,
//                                 fontFamily: "poppinsRegular"),
//                           ),
//                         ],
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                         size: 30.sp,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 7.sp),
//                 child: InkWell(
//                   onTap: () {
//                     Get.back();
//                     Get.to(const AnalyticsScreen(),
//                         transition: Transition.cupertino);
//                   },
//                   child: Container(
//                     color: Colors.white.withOpacity(0.3),
//                     height: 50,
//                     child: ListTile(
//                       titleAlignment: ListTileTitleAlignment.center,
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.analytics_outlined,
//                             size: 30.sp,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Text(
//                             "Analytics",
//                             style: TextStyle(
//                                 fontSize: 16.sp,
//                                 color: Colors.white,
//                                 fontFamily: "poppinsRegular"),
//                           ),
//                         ],
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                         size: 30.sp,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 7.sp),
//                 child: InkWell(
//                   onTap: () {},
//                   child: Container(
//                     color: Colors.white.withOpacity(0.3),
//                     height: 50,
//                     child: ListTile(
//                       titleAlignment: ListTileTitleAlignment.center,
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.sports_basketball_rounded,
//                             size: 30.sp,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Text(
//                             "Tournaments",
//                             style: TextStyle(
//                                 fontSize: 16.sp,
//                                 color: Colors.white,
//                                 fontFamily: "poppinsRegular"),
//                           ),
//                         ],
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                         size: 30.sp,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),*/
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 7.sp),
//                 child: InkWell(
//                   onTap: () {
//                     Get.back();
//                     Get.to(() => const RecordsScreen(),
//                         transition: Transition.cupertino);
//                   },
//                   child: Container(
//                     color: Colors.white.withOpacity(0.3),
//                     height: 50,
//                     child: ListTile(
//                       titleAlignment: ListTileTitleAlignment.center,
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.wine_bar,
//                             size: 30.sp,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Text(
//                             "Records",
//                             style: TextStyle(
//                                 fontSize: 16.sp,
//                                 color: Colors.white,
//                                 fontFamily: "poppinsRegular"),
//                           ),
//                         ],
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                         size: 30.sp,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 7.sp),
//                 child: InkWell(
//                   onTap: () {
//                     Get.back();
//                     Get.to(() => const NotificationScreen(),
//                         transition: Transition.cupertino);
//                   },
//                   child: Container(
//                     color: Colors.white.withOpacity(0.3),
//                     height: 50,
//                     child: ListTile(
//                       titleAlignment: ListTileTitleAlignment.center,
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.notifications,
//                             size: 30.sp,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Text(
//                             "Notifications",
//                             style: TextStyle(
//                                 fontSize: 16.sp,
//                                 color: Colors.white,
//                                 fontFamily: "poppinsRegular"),
//                           ),
//                         ],
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                         size: 30.sp,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 7.sp),
//                 child: InkWell(
//                   onTap: () {
//                     Get.back();
//                     Get.to(() => const HistoryScreen(),
//                         transition: Transition.cupertino);
//                   },
//                   child: Container(
//                     color: Colors.white.withOpacity(0.3),
//                     height: 50,
//                     child: ListTile(
//                       titleAlignment: ListTileTitleAlignment.center,
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.history,
//                             size: 30.sp,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Text(
//                             "History",
//                             style: TextStyle(
//                                 fontSize: 16.sp,
//                                 color: Colors.white,
//                                 fontFamily: "poppinsRegular"),
//                           ),
//                         ],
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                         size: 30.sp,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 7.sp),
//                 child: InkWell(
//                   onTap: () {
//                     Get.back();
//                     Get.to(() => (const AboutScreen()),
//                         transition: Transition.cupertino);
//                   },
//                   child: Container(
//                     color: Colors.white.withOpacity(0.3),
//                     height: 50,
//                     child: ListTile(
//                       titleAlignment: ListTileTitleAlignment.center,
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             CupertinoIcons.info,
//                             size: 30.sp,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Text(
//                             "About Us",
//                             style: TextStyle(
//                                 fontSize: 16.sp,
//                                 color: Colors.white,
//                                 fontFamily: "poppinsRegular"),
//                           ),
//                         ],
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                         size: 30.sp,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 7.sp),
//                 child: InkWell(
//                   onTap: () {
//                     Get.defaultDialog(
//                       title: 'Logout',
//                       textConfirm: 'Logout',
//                       middleTextStyle: TextStyle(
//                           fontSize: 13.sp,
//                           color: AppColor.txtColorMain,
//                           fontFamily: "poppinsRegular"),
//                       middleText: 'Are you sure you want to logout?',
//                       textCancel: 'Cancel',
//                       titleStyle: TextStyle(
//                           fontSize: 16.sp,
//                           color: AppColor.txtColorMain,
//                           fontFamily: "poppinsSemiBold"),
//                       buttonColor: AppColor.blueColor, // Set the button color
//                       radius: 10.0, // Set the border radius
//                       onConfirm: () {
//                         CacheHelper.clearData("userId");
//                         Get.back();
//                         Get.offAll(() =>
//                         const LoginScreen(),
//                           transition: Transition.leftToRightWithFade,
//                         ); // Navigate to login screen
//                       },
//                       onCancel: () {
//                         Get.back(); // Close current screen
//                       },
//                     );
//                   },
//                   child: Container(
//                     color: Colors.white.withOpacity(0.3),
//                     height: 50,
//                     child: ListTile(
//                       titleAlignment: ListTileTitleAlignment.center,
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.logout,
//                             size: 30.sp,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Text(
//                             "Logout",
//                             style: TextStyle(
//                                 fontSize: 16.sp,
//                                 color: Colors.white,
//                                 fontFamily: "poppinsRegular"),
//                           ),
//                         ],
//                       ),
//                       trailing: Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                         size: 30.sp,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

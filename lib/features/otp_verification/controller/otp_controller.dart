import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../../../core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../login/view/login_page.dart';
import '../model/otp_model.dart';

class OtpController extends GetxController {
  final TextEditingController otp = TextEditingController();
  var otpModel = OtpModel().obs;
  var isLoading = false.obs;
  Future<void> verifyOtp({required String emailId}) async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.checkOtp;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {"email_id": emailId,"otp":otp.text.trim()};

    try {
      isLoading.value=true;
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        isLoading.value=false;
        final responseData = json.decode(response.body);
        otpModel(OtpModel.fromJson(responseData));

        if (otpModel.value.status == true) {
          CustomSnackBar.showCustomSnackBar(
            title: 'Registration success',
            message: otpModel.value.message.toString(),
          );
        } else {
          CustomSnackBar.showCustomErrorSnackBar(
            title: 'Registration failed',
            message: otpModel.value.message.toString(),
          );
        }
      } else if (response.statusCode == 400) {
        isLoading.value=false;
        final responseData = json.decode(response.body);
        otpModel(OtpModel.fromJson(responseData));

        if (otpModel.value.status == false) {
          CustomSnackBar.showCustomErrorSnackBar(
            title: 'Registration failed',
            message: otpModel.value.message.toString(),
          );
        } else {
          CustomSnackBar.showCustomErrorSnackBar(
            title: 'Registration failed',
            message: otpModel.value.message.toString(),
          );
        }
      } else {
        throw Exception('Failed to fetch category data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      isLoading(false);
    }
  }


}

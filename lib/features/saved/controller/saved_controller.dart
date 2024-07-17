import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../model/saved_model.dart';

class SavedController extends GetxController {
  var savedModel = const SavedModel().obs;
  var isLoading = true.obs;

  Future<void> fetchSavedVideo() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.savedVideo;
    const apiToken = ApiEndPoints.apiToken;
    final regId = await CacheHelper.getData('regId');
    var requestData = {"user_id": regId};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        savedModel(SavedModel.fromJson(responseData));

        if (savedModel.value.status == true) {
          if (kDebugMode) {
            print(
                "Success to fetch category data: ${savedModel.value.message}");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        savedModel(SavedModel.fromJson(responseData));

        if (savedModel.value.status == false) {
          if (kDebugMode) {
            print("Failed to fetch category data: ${savedModel.value.message}");
          }
        } else {
          throw Exception('Status is not false');
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

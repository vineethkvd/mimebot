
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../model/lessons_model.dart';

class LessonsController extends GetxController {
  var lessonModel = const LessonModel().obs;
  var isLoading = true.obs;
  var curUrl=''.obs;
  var curTitle=''.obs;
  var curDescription=''.obs;

  Future<void> fetchLessons({required String courseId}) async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.lesson;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {"api_key": apiToken, "course_id":courseId};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        lessonModel(LessonModel.fromJson(responseData));

        if (lessonModel.value.status == "Success") {
          if (kDebugMode) {
            print(
                "Success to fetch category data: ${lessonModel.value
                    .message}");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        lessonModel(LessonModel.fromJson(responseData));

        if (lessonModel.value.status == "Failed") {
          if (kDebugMode) {
            print(
                "Failed to fetch category data: ${lessonModel.value
                    .message}");
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
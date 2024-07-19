import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  var Hour = 0.obs;
  var Min = 0.obs;

  TextEditingController testName = TextEditingController();
  TextEditingController question_count = TextEditingController();
  TextEditingController question = TextEditingController();
}

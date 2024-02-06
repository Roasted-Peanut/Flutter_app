import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowSnackBar {
  static void snackBar(
      {String? type, required String title, required String message}) async {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: type == 'error' ? Colors.red : Colors.green,
      colorText: Colors.white,
      icon: type == 'error'
          ? const Icon(Icons.error, color: Colors.white)
          : const Icon(Icons.check_circle, color: Colors.white),
    );
  }

  static void showSuccessToast(String title, String message) async {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      icon: const Icon(Icons.check_circle, color: Colors.white),
    );
  }
}

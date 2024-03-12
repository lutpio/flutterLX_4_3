import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  bool _isValid() {
    if (emailController.text.trim().isEmpty) {
      Get.snackbar('Validasi', 'Email tidak boleh kosong');
      return false;
    }
    if (!emailController.text.trim().isEmail) {
      Get.snackbar('Validasi', 'Email tidak valid');
      // RxStatus.error('message');
      return false;
    }
    if (passwordController.text.trim().isEmpty) {
      Get.snackbar('Validasi', 'Password tidak boleh kosong');
      // RxStatus.error('message');
      return false;
    }
    return true;
  }

  void check() {
    if (_isValid()) {
      Get.offAllNamed(Routes.HOME);
      // RxStatus.success();
    }
  }
  // void increment() => count.value++;
}

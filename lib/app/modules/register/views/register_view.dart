import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: SafeArea(
                child: SingleChildScrollView(
                    child: Column(
              children: [
                TextField(
                  controller: controller.emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    filled: true,
                    hintText: "Email Address",
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    ),
                    prefixIcon: const Icon(Icons.email_rounded),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  controller: controller.passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    filled: true,
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    ),
                    prefixIcon: const Icon(Icons.key_rounded),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  controller: controller.password2Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    filled: true,
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    ),
                    prefixIcon: const Icon(Icons.key_rounded),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.check();
                    },
                    child: Text(
                      "Buat akun",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () async {
                      await Get.offAllNamed(Routes.LOGIN);
                      // print("Button Clicked");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    child: Text("Sudah punya akun"),
                  ),
                ),
              ],
            )))));
  }
}

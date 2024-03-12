import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'ManOasis',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.black,
              child: Image.asset(
                "images/oasis.jpg",
                width: double.infinity,
                height: 300,
              ),
            ),
            Container(
              // color: Colors.amber,
              margin: EdgeInsets.all(20),
              child: Text(
                'Selamat Datang di ManOasis, aplikasi absensi untuk anggota Marching Band Oasis Man 1 Samarinda',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                child: Text("Lets Go"),
                onPressed: () async {
                  await Get.offAllNamed(Routes.LOGIN);
                  // print("Button Clicked");
                },
              ),
            )
          ],
        ));
  }
}

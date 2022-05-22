
import 'package:et_news/logic/controller/main_controller.dart';
import 'package:et_news/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() =>
            Text(controller.listTitle.value[controller.currentIndex.value])),
        actions: [IconButton(onPressed: () {Get.toNamed(Routes.searchScreen);}, icon: const Icon(Icons.search))],
      ),
      // ignore: invalid_use_of_protected_member
      body: Obx(
        () => controller.listScreen.value[controller.currentIndex.value],
      ),

      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            elevation: 20,
            items: controller.listBar,
            currentIndex: controller.currentIndex.value,
            onTap: (int value) {
              controller.ontap(value);
            }),
      ),
    );
  }
}

//https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=d98afbc56408415cad8843f6e87be82b

// ignore_for_file: invalid_use_of_protected_member


import 'package:et_news/logic/controller/main_controller.dart';
import 'package:et_news/view/screen/new_screen.dart';
import 'package:et_news/view/widget/list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BussinessScreen extends StatelessWidget {
  const BussinessScreen({Key? key}) : super(key: key);

  //final controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (MainController) {
        return MainController.bussinessNews.isNotEmpty
            ? ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return TextButton(onPressed: () {
                Get.to(NewsScreen(
                  title: MainController.bussinessNews.value[index]['title'],
                  url: MainController.bussinessNews
                      .value[index]['urlToImage'] ,
                  time: MainController.bussinessNews
                      .value[index]['publishedAt'],
                  description: MainController.bussinessNews
                      .value[index]['description'],
                  publisher: MainController.bussinessNews
                      .value[index]['source']['name'],
                ));
              },
                child: ListviewWidget(
                  url: MainController.bussinessNews.value[index]['urlToImage'],
                  title: MainController.bussinessNews.value[index]['title'],
                  time: MainController.bussinessNews
                      .value[index]['publishedAt'],),
              );
            },
            separatorBuilder: (ctx, index) => const Divider(thickness: 1),
            itemCount: MainController.bussinessNews.length)
            : Center(
            child: CircularProgressIndicator(
              color: Colors.green.shade900,
            ));
      },
    );
  }
}

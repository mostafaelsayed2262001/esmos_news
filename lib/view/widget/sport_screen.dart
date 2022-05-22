
import 'package:et_news/logic/controller/main_controller.dart';
import 'package:et_news/view/screen/new_screen.dart';
import 'package:et_news/view/widget/list_view_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (MainController) {
        print(MainController.sportsNews.length);
        return MainController.sportsNews.value.isNotEmpty
            ? ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {

              return TextButton(onPressed: () {
                Get.to(NewsScreen(
                  title: MainController.sportsNews.value[index]['title'],
                  url: MainController.sportsNews
                      .value[index]['urlToImage'] ,
                  time: MainController.sportsNews
                      .value[index]['publishedAt'],
                  description: MainController.sportsNews
                      .value[index]['description'],
                  publisher: MainController.sportsNews
                      .value[index]['source']['name'],
                ));
              },
                child: ListviewWidget(
                  url: MainController.sportsNews.value[index]['urlToImage'],
                  title: MainController.sportsNews.value[index]['title'],
                  time: MainController.sportsNews.value[index]['publishedAt'],),
              );

            },
            separatorBuilder: (ctx, index) => const Divider(thickness: 1),
            itemCount: MainController.sportsNews.length)
            : const Center(
            child: CircularProgressIndicator(
              color: Colors.deepOrange,
            ));
      },
    );
  }
}

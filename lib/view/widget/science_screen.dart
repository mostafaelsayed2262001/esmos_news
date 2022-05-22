
import 'package:et_news/logic/controller/main_controller.dart';
import 'package:et_news/view/screen/new_screen.dart';
import 'package:et_news/view/widget/list_view_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (MainController) {
        print(MainController.scienceNews.length);
        return MainController.scienceNews.isNotEmpty
            ? ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {

              return TextButton(onPressed: () {
                Get.to(NewsScreen(
                  title: MainController.scienceNews.value[index]['title'],
                  url: MainController.scienceNews
                      .value[index]['urlToImage'] ?? 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/300px-No_image_available.svg.png',
                  time: MainController.scienceNews
                      .value[index]['publishedAt'],
                  description: MainController.scienceNews
                      .value[index]['description'],
                  publisher: MainController.scienceNews
                      .value[index]['source']['name'],
                ));
              },
                child: ListviewWidget(
                  url: MainController.scienceNews[index]['urlToImage'],
                  title: MainController.scienceNews[index]['title'],
                  time: MainController.scienceNews[index]['publishedAt'],),
              );

            },
            separatorBuilder: (ctx, index) => const Divider(thickness: 1),
            itemCount: MainController.scienceNews.length)
            :  Center(
            child: CircularProgressIndicator(
              color: Colors.green.shade900,
            ));
      },
    );;
  }
}

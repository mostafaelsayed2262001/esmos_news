
import 'package:et_news/services/category_services.dart';
import 'package:et_news/view/widget/bussines_screen.dart';
import 'package:et_news/view/widget/science_screen.dart';
import 'package:et_news/view/widget/setting_screen.dart';
import 'package:et_news/view/widget/sport_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getBussinessData();
    getSportsData();
    getScienceData();
  }
  RxInt currentIndex = 0.obs;
  RxList  listScreen =
      [const BussinessScreen(), const ScienceScreen(), const SportsScreen(), const SettingScreen()].obs;

  ontap(value) {
    currentIndex.value = value;
  }

  RxInt counter = 0.obs;
  count(val) {
    counter.value = val;
  }

  List<BottomNavigationBarItem> listBar = const [
     BottomNavigationBarItem(
      icon: Icon(Icons.business_sharp),
      label: 'Bussiness',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.science_outlined),
      label: 'Science',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.sports),
      label: 'Sports',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Setting',
    ),
  ];
  RxList<String> listTitle = [
    'Bussiness News',
    'Science News',
    'Sports News',
    'Settings',
  ].obs;
  RxList bussinessNews = [].obs;
  RxList sportsNews = [].obs;
  RxList scienceNews = [].obs;
//BussinessData
  getBussinessData() async{
    await DioHelper.getData(path: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'business',
      'apiKey': 'd98afbc56408415cad8843f6e87be82b'
    }).then((value) {
      print(value.data['articles'][0]['title']);
      return bussinessNews.value = value.data['articles'];
       print(bussinessNews.value);
    }).catchError((e) {
      print(e);
    });
  }
  getSportsData()async {
    await DioHelper.getData(path: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'sport',
      'apiKey': 'd98afbc56408415cad8843f6e87be82b'
    }).then((value) {

      return sportsNews.value = value.data['articles'];

    }).catchError((e) {
      print(e+'hello');
    });
  }
  getScienceData() async{
    await DioHelper.getData(path: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'science',
      'apiKey': 'd98afbc56408415cad8843f6e87be82b'
    }).then((value) {
      print(value.data['articles'][0]['title']);
      return scienceNews.value = value.data['articles'];

    }).catchError((e) {
      print(e+'hello');
    });
  }
}

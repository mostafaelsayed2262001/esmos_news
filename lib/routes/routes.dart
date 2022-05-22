


import 'package:et_news/logic/binding/binding.dart';
import 'package:et_news/view/screen/main_screen.dart';
import 'package:et_news/view/screen/search_screen.dart';

import 'package:get/get.dart';

class AppRoutes {
  //intinalRoute
  static const mainScreen = Routes.mainScreen;
  static const searchScreen = Routes.searchScreen;


  //getPage

  static final routes = [

    GetPage(
      name: mainScreen,
      page: () =>  MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: searchScreen,
      page: () =>  SearchScreen(),
      binding: MainBinding(),
    ),

  ];
}

class Routes {

  static const mainScreen = '/mainScreen';
  static const searchScreen = '/searchScreen';

}

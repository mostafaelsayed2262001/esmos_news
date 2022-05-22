
import 'package:et_news/routes/routes.dart';
import 'package:et_news/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
  DioHelper.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(

          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            actionsIconTheme: IconThemeData(color: Colors.green.shade800),
            titleTextStyle: TextStyle(
                color: Colors.green.shade900,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.green.shade900,
              unselectedItemColor: Colors.black,
              elevation: 10,
              showUnselectedLabels: true,
              backgroundColor: Colors.black12)),
      darkTheme: ThemeData(

          appBarTheme: AppBarTheme(
            backgroundColor: Colors.green.shade800,
            elevation: 0,
            actionsIconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.green.shade900,
              unselectedItemColor: Colors.black,
              elevation: 10,
              showUnselectedLabels: true,
              backgroundColor: Colors.black12)),
      themeMode: ThemeMode.dark,
      title: 'News App',

      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.mainScreen,
      getPages: AppRoutes.routes,
    );
  }
}

import 'package:get/get.dart';

class SettingController extends GetxController{
  @override
  onInit(){
    isDark;
    changeTheme();
  }
  RxBool isDark = false.obs;
  changeTheme(){
    isDark.value = !isDark.value;
  }
}
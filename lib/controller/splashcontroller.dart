import 'package:get/get.dart';
import 'package:newsapp/route/routename.dart';

class SplashController extends GetxController {
  


SplashController(); @override
void onInit() {
  changestate();
  super.onInit();
}
changestate(){
  Future.delayed ( const Duration(seconds: 4),(){
    Get.toNamed(RouteName.onboarding);
  });
}
}
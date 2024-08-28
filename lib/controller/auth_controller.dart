import 'package:get/get.dart';
import 'package:newsapp/route/routename.dart';

class AuthController extends GetxController {


AuthController();

navigatetologin(){
  Get.toNamed(RouteName.login);
}
}
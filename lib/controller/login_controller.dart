import 'package:get/get.dart';
import 'package:newsapp/const/const.dart';
import 'package:newsapp/route/routename.dart';

class LoginController extends GetxController {


LoginController();

 TextEditingController emailcontroller = TextEditingController();
 TextEditingController passcontroller = TextEditingController();


 navigatesignup(){
  Get.toNamed(RouteName.signup);
 }

 navigatetohome(){
  Get.toNamed(RouteName.home);
 }
}
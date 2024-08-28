import 'package:get/get.dart';
import 'package:newsapp/const/const.dart';

class SignupController extends GetxController {
SignupController();

   TextEditingController emial = TextEditingController();
 TextEditingController pass = TextEditingController();
 TextEditingController name = TextEditingController();





 
 
 
 navigatetologin(){
  Get.back();
  
 }
 
  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
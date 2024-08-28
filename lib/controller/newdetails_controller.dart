import 'package:get/get.dart';

class NewsdetailsController extends GetxController {


NewsdetailsController();

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;

  navigatetoback(){
    Get.back();
  }
}
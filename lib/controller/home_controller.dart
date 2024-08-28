import 'package:get/get.dart';
import 'package:newsapp/route/routename.dart';

class HomeController extends GetxController {


HomeController();


final _index = 0.obs;
get index => _index.value;
set index(value) => _index.value = value;

changecategoryindex(int value){
  index = value;
}
 
 final _swiperindex = 0.obs;
 get swiperindex => _swiperindex.value;
 set swiperindex(value) => _swiperindex.value = value;
 

changeswiperindex(int value){
  swiperindex = value;

}


final _changeindex = 0.obs;
get changeindex => _changeindex.value;
set changeindex(value) => _changeindex.value = value;


navigatetonewdetail(){
  Get.toNamed(RouteName.newsdetails);
}


}
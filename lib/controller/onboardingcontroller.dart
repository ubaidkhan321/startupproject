import 'package:get/get.dart';
import 'package:newsapp/const/const.dart';
import 'package:newsapp/route/routename.dart';


class OnboardingController extends GetxController {

OnboardingController();

 
 final _curenrtindex = 0.obs;
 get curenrtindex => this._curenrtindex.value;
 set curenrtindex(value) => this._curenrtindex.value = value;

 changeindex(int value){
  _curenrtindex.value = value;

 }

  late PageController pageController;
  
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

    @override
    void onClose() {
      pageController.dispose();
      super.onClose();
    }


 changepageindex(int value){
 pageController.animateToPage(value, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
 }

 navigatepage(){
  Get.toNamed(RouteName.auth);
 }
 
 

 
}
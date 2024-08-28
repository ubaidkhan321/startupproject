import 'package:get/get.dart';
import 'package:newsapp/controller/auth_controller.dart';
import 'package:newsapp/controller/home_controller.dart';
import 'package:newsapp/controller/login_controller.dart';
import 'package:newsapp/controller/newdetails_controller.dart';
import 'package:newsapp/controller/onboardingcontroller.dart';
import 'package:newsapp/controller/signup_controller.dart';
import 'package:newsapp/controller/splashcontroller.dart';
import 'package:newsapp/route/routename.dart';
import 'package:newsapp/view_pages/Home_page.dart';
import 'package:newsapp/view_pages/authentication_page.dart';
import 'package:newsapp/view_pages/login_page.dart';
import 'package:newsapp/view_pages/news_details_page.dart';
import 'package:newsapp/view_pages/onboarding_page.dart';
import 'package:newsapp/view_pages/signup_page.dart';
import 'package:newsapp/view_pages/splash_page.dart';

class AppRoutes{
  static  getroutes() => [
    GetPage(
      name: RouteName.splash,
       page: ()=> const Splashpage(),
       binding: BindingsBuilder.put(() => SplashController())
       
       ),
       GetPage(
        name: RouteName.onboarding, 
        page: ()=> const OnboardingPage(),
        binding: BindingsBuilder.put(() => OnboardingController())
        ),
        GetPage(
          
          name: RouteName.auth,
          
           page: ()=> const  AuthenticationPage(),
           binding: BindingsBuilder.put(() => AuthController() )
           
           ),
           GetPage(
            name: RouteName.login,
             page: ()=> const LoginPage(),
             binding: BindingsBuilder.put(() => LoginController()),
             ),
              GetPage(
            name: RouteName.signup,
             page: ()=> const SignupPage(),
             binding: BindingsBuilder.put(() => SignupController()),
             ),
              GetPage(
            name: RouteName.home,
             page: ()=> const HomePage(),
             binding: BindingsBuilder.put(() => HomeController()),
             ),

             GetPage(
              
              name: RouteName.newsdetails , 
              page: ()=>  const NewsdetailsPage(),
              binding: BindingsBuilder.put(() => NewsdetailsController())
              ),

    
  ];
}
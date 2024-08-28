
import 'package:get/get.dart';
import 'package:newsapp/const/const.dart';

import 'package:newsapp/controller/signup_controller.dart';
import 'package:newsapp/widgets/button.dart';
import 'package:newsapp/widgets/customtextformfield.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Appstring.signup,
                style: AppStyle.semibold(fontsize: 16),
              ),
              Text(
                Appstring.signsimpleway,
                style: AppStyle.regular(),
              ),
              20.heightBox,
                Customtextformfield(
                controller: controller.name,
                hint: Appstring.signupname,
                labelhint: Appstring.name,
                icon: const  Icon(Icons.person_2_rounded,color: Colors.blue,)
                
              ),
            
              20.heightBox,
              Customtextformfield(
                controller: controller.emial,
                hint: Appstring.signupemialhint,
                labelhint: Appstring.email,
                icon: const Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
              ),
              20.heightBox,
              Customtextformfield(
                controller: controller.pass,
                hint: Appstring.signuppashint,
                labelhint: Appstring.password,
                ispassword: true,
              ),
              10.heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SizedBox(
                    width: context.screenWidth - 20,
                    child: ourButton(
                        title: Appstring.signup,
                        color: AppColor.primaryButton,
                        onpress: () {

                        })),
              ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(Appstring.haveanaccount),
                  TextButton(onPressed: (){
                    controller.navigatetologin();

                  }, child: const  Text(
                    Appstring.login
                  ))
                ],
              )
            ],
          ),
        )
            );
  }
}
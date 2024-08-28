import 'package:get/get.dart';
import 'package:newsapp/const/const.dart';

import 'package:newsapp/controller/login_controller.dart';
import 'package:newsapp/widgets/button.dart';
import 'package:newsapp/widgets/customtextformfield.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [TextButton(onPressed: 
          (){

            controller.navigatetohome();
          }, child: Text(Appstring.Loginasguest))],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Appstring.login,
                style: AppStyle.semibold(fontsize: 16),
              ),
              Text(
                Appstring.simpleway,
                style: AppStyle.regular(),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(Appassets.login,
                )),
              20.heightBox,
              Customtextformfield(
                controller: controller.emailcontroller,
                hint: Appstring.emailhint,
                labelhint: Appstring.email,
                icon: const Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
              ),
              20.heightBox,
              Customtextformfield(
                controller: controller.passcontroller,
                hint: Appstring.passwordhint,
                labelhint: Appstring.password,
                ispassword: true,
              ),
              10.heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SizedBox(
                    width: context.screenWidth - 20,
                    child: ourButton(
                        title: Appstring.login,
                        color: AppColor.primaryButton,
                        onpress: () {

                          controller.navigatetohome();
                        })),
              ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(Appstring.donthaveaccount),
                  TextButton(onPressed: (){

                    controller.navigatesignup();
                  }, child: Text(
                    Appstring.signup
                  ))
                ],
              )
            ],
          ),
        )
            );

  }
}

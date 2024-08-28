import 'package:get/get.dart';
import 'package:newsapp/const/const.dart';
import 'package:newsapp/controller/auth_controller.dart';
import 'package:newsapp/widgets/button.dart';

class AuthenticationPage extends GetView<AuthController> {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            Appassets.logo,
            width: 200,
          ).box.alignBottomCenter.make(),
        ),
        Appstring.onboardingtitle1.text.make(),
        const Spacer(),
        SizedBox(
            height: context.screenHeight * 0.06,
            width: context.screenWidth - 40,
            child: ourButton(
                title: Appstring.signinwithgoogle,
                onpress: () {},
                color: AppColor.primaryButton),
                ),
        10.heightBox,
        SizedBox(
            height: context.screenHeight * 0.06,
            width: context.screenWidth - 40,
            child: ourButton(
                title: Appstring.signwithfacebook,
                onpress: () {},
                color: AppColor.secondaryButton),
                ),
        const Spacer(),
        TextButton(
            onPressed: () {
              controller.navigatetologin();
            },
            child: Text(Appstring.signinwithemail,
                style: AppStyle.regular(color: AppColor.secondaryButton)
                ),
                ),
        Text(
          Appstring.bysignourpolicy,
          style: AppStyle.regular(color: AppColor.secondarytextcolor),
        ),
        10.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Appstring.privacypolicy.text.color(Colors.red).make(),
            5.widthBox,
            Appstring.termandcondication.text.color(Colors.red).make()
          ],
        ),
        50.heightBox,
      ],
    ),
    );
  }
}

import 'package:get/get.dart';
import 'package:newsapp/const/const.dart';
import 'package:newsapp/controller/onboardingcontroller.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bacground,
      body: PageView.builder(
          controller: controller.pageController,
          onPageChanged: (value) => controller.changeindex(value),
          itemCount: 2,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Expanded(
                  child: Image.asset("${Appassets.onboarding}$index.gif"),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        AppList.onboardingtitilelist1[index].text.black
                            .fontWeight(FontWeight.bold)
                            .size(18)
                            .make(),
                        5.heightBox,
                        VxBox()
                            .size(200, 5)
                            .rounded
                            .color(AppColor.primaryButton)
                            .make(),
                        10.heightBox,
                        AppList.onboardingdisist1[index].text
                            .align(TextAlign.center)
                            .color(AppColor.darkModeCard)
                            .make()
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {

                controller.navigatepage();
              },
              icon: Appstring.skip.text.make(),
            ),
            Obx(
              () => Row(
                children: List.generate(
                    2,
                    (index) => VxBox()
                        .color(index == controller.curenrtindex
                            ? AppColor.primaryButton
                            : AppColor.sliderDot)
                        .size(index == controller.curenrtindex ? 20 : 5, 5)
                        .margin(const EdgeInsets.only(left: 5))
                        .rounded
                        .make()),
              ),
            ),
            Obx(() => Row(
                  children: [
                    controller.curenrtindex < 1
                        ? IconButton(
                            onPressed: () {
                              controller
                                  .changepageindex(controller.curenrtindex+1);
                                
                                 
                            },
                            icon: const Icon(Icons.arrow_forward_ios_rounded),
                          )
                        : TextButton(
                            onPressed: () {
                              controller.navigatepage();
                            }, child: "Countinue".text.make())
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

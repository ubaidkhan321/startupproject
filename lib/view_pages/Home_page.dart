import 'package:get/get.dart';
import 'package:newsapp/const/const.dart';
import 'package:newsapp/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const  Drawer(),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_rounded))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        AppList.homelisttitle.length,
                        (index) => Obx(()=>
                         Column(
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        controller.changecategoryindex(index);
                                      },
                                      child: Text(
                                        AppList
                                            .homelisttitle[index].capitalizeFirst
                                            .toString(),
                                        style: AppStyle.regular(
                                            color: controller.index == index
                                                ? AppColor.primaryButton
                                                : AppColor.lightText),
                                      )),
                                  VxBox()
                                      .rounded
                                      .size(30, 5)
                                      .color(controller.index == index
                                          ? AppColor.primaryButton
                                          : Colors.transparent)
                                      .make()
                                ],
                              ),
                        ))),
              ),
              10.heightBox,
              VxSwiper.builder(
                  onPageChanged: (value){
                    controller.changeswiperindex(value);

                  },
                  autoPlay: true,
                  viewportFraction: 1.0,
                  itemCount: AppList.homelisttitle.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          color: Vx.randomColor,
                        ),
                        Positioned(
                            top: 14,
                            left: 17,
                            child: VxBox(
                                    child: Text(
                              Appstring.sport,
                              style: AppStyle.regular(color: Colors.white),
                            ))
                                .padding(const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6))
                                .color(AppColor.primaryButton.withOpacity(0.6))
                                .roundedSM
                                .make()),
                        Positioned(
                            top: 14,
                            right: 10,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.favorite_outline,
                                  color: Colors.white,
                                ),
                                5.widthBox,
                                Text(
                                  "255",
                                  style: AppStyle.regular(color: Colors.white),
                                )
                              ],
                            )
                                .box
                                .roundedSM
                                .color(Colors.black26)
                                .padding(const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6))
                                .make()),

                                Positioned(
                                  bottom: 10,
                                  left: 10,
                                  right: 10,
                                  child: Column(
                                    children: [
                                      Text(Appstring.dis,style: AppStyle.regular(color: Colors.white),).box.padding( const EdgeInsets.symmetric(horizontal: 12,vertical: 6)).make(),
                                    Row(
                                      children: [
                                       const Icon(Icons.timer_sharp,color: Colors.white,),
                                        5.widthBox,
                                        Text("20.march,2024",style: AppStyle.regular(color: Colors.white),),
                                      ],
                                    )
                                    
                                    ],
                                  )
                                  ),
                      ],
                    );
                  }),
              10.heightBox,
              Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        AppList.homelisttitle.length,
                        (index) => VxBox()
                            .margin(const EdgeInsets.only(left: 8))
                            .size(20, 5)
                            .color(controller.swiperindex == index
                                ? AppColor.primaryButton
                                : AppColor.sliderDot)
                            .make()),
                  )),
               
                  Row(
                    children: [
                      VxBox().size(5, 20).color(AppColor.primaryButton).make(),
                      5.widthBox,
                      Text("Popular News",style: AppStyle.semibold(),),
                       const Spacer(),
                       TextButton(onPressed: (){}, child: Text("View",style: AppStyle.regular(),))

                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: List.generate(
                        20, (index) => Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                controller.navigatetonewdetail();
                              },
                              child: Container(
                                height: 150,
                                color: Vx.randomColor,
                                child:  Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                            const  Text("Cristino Ranaldo first to break the 200m mark on intagram"),
                                           5.heightBox,
                                            VxBox(child: Text("Entertainment",style: AppStyle.regular(color: Colors.white),).box.roundedSM.color(AppColor.primaryButton).padding( const EdgeInsets.symmetric(horizontal: 12,vertical: 8)).make()).make()
                                           
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            color: Colors.black,
                                            width: 80,
                                            height: 100,
                                          ),
                                        )
                                       
                                      ],
                                    ),
                                    20.heightBox,
                                    Row(
                                        children: [
                                         const Icon(Icons.timer_sharp,color: Colors.black26,),
                                          5.widthBox,
                                          Text("20.march,2024",style: AppStyle.regular(color: Colors.black26),),
                                       
                                        const Spacer(),
                                        Row(
                                children: [
                                  const Icon(
                                    Icons.favorite_outline,
                                    color: Colors.black26,
                                  ),
                                  5.widthBox,
                                  Text(
                                    "255",
                                    style: AppStyle.regular(color: Colors.black26),
                                  ),
                                  10.widthBox,
                                ],
                              )
                                        
                                        ],
                                      )
                                  ],
                                ),
                              ),
                            ),
                            5.heightBox
                          ],
                        )
                        ),
                    ),
                  )
            ],
          ),
        ));
  }
}

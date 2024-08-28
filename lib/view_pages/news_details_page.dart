import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/const/const.dart';
import 'package:newsapp/controller/newdetails_controller.dart';

class NewsdetailsPage extends GetView<NewsdetailsController> {
  const NewsdetailsPage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
  

    body: Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          height: context.screenHeight *0.3,
          color: Colors.blue,
        
        ),
        10.heightBox,
        SingleChildScrollView(
          child: Container(
            color: Colors.white,    
            margin: EdgeInsets.only(top: context.screenHeight *0.3,),
            
            padding: const EdgeInsets.fromLTRB(12,12   ,12, 0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        VxBox(child: Text(Appstring.sport,
                            style: AppStyle.regular(),)).roundedSM.color(Colors.black38).padding ( const  EdgeInsets.symmetric(horizontal: 12,vertical: 6)).make(),
                    
                             const Spacer(),
                             IconButton(onPressed: (){}, icon: const  Icon(Icons.favorite_border_rounded)),
                          
                             IconButton(onPressed: (){}, icon: const  Icon(Icons.save_outlined)),
                      ],
                    ),
                    5.heightBox,
                    Row(
                      children: [
                      const  Icon(Icons.date_range,color: Colors.black26,),
                      5.widthBox,
                      
                         Text("14 Auguest 2024",style: AppStyle.regular(fontsize: 12),),
                           5.widthBox,
                        const Icon(Icons.speed,color: Colors.black26,),
                          5.widthBox,
                      
                         Text("14 minutes",style: AppStyle.regular(fontsize: 12),)   
                         ],
                    ),
                    10.heightBox,
                    Text("Lion Messi's 2012 was the greatest year ever seen from a footballar",style: AppStyle.bold(),)  ,
                    10.heightBox,
                    VxBox().rounded.size(150, 7).color(AppColor.primaryButton).make(), 
                    20.heightBox,
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primaryButton
                      ),
                      onPressed: (){},
                     icon: const Icon(Icons.chat,color: Colors.white,),
                      label: Text("Comment",style: AppStyle.regular(color: Colors.white),)),
                      5.heightBox,
                      Row(
                        children: [
                        const  Icon(Icons.remove_red_eye),
                          5.widthBox,
                        const  Text("1947.views"),
                        5.widthBox,
                        const  Icon(Icons.favorite,color: Colors.red,),
                        5.widthBox,
                          const Text("255 people likes")
                        ],
                      ),
                      20.heightBox,
                      const  Text(" Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available"),
                    20.heightBox,
                    Container(
                      color: Colors.blue,
                      height: 200,
                    ),
                    20.heightBox,
                    const  Text(" Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available"),
                   10.heightBox,
                   Text("You May also Like",style: AppStyle.bold(fontweight: FontWeight.bold,color: Colors.black),),
                 5.heightBox,
                 VxBox().rounded.color(AppColor.primaryButton).size(120, 5).make(),
                 ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context,index){
                  return  Container(
                    margin: const EdgeInsets.only(bottom: 10),
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
                                
                              
                              );
                              
                 }),
               

                  
                  
                  ],
                )
              ],
          
            ),
          
          
          ),
        ),

         SafeArea(
            child: Row(
              children: [
                IconButton(onPressed: (){
                  controller.navigatetoback();
                }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
                 const Spacer(),
                IconButton(onPressed: (){}, icon: const Icon(Icons.share,color: Colors.white))
            
              ],
            ),
          ),
      ],
    )
    );
  }
}
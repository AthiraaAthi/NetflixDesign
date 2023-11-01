import 'package:flutter/material.dart';
//import 'package:flutter_application_10_/utils/color_constant/color_constant.dart';
import 'package:flutter_application_10_/view/comingsoon_screen/coming_soon_screen_widgets/coming_soon_screen_widgets.dart';
import 'package:flutter_application_10_/view/new_arrival/new_arrival_screen.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: Row(
          children: [
            Container(
                  height: 19,
                  width: 19,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Ellipse 6.png"))),
                  child: Image.asset("assets/images/bi_bell-fill.png"),
                  
                  
                ),

            SizedBox(width: 10,),
            Text("notifications",style: TextStyle(color: Colors.white,fontSize: 16.906,fontWeight: FontWeight.w700),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        
      ),
      body:SingleChildScrollView(
        child: Container(
         
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: 0,),
      
             NewArrivalScreen(
              title: "New Arrival", 
              subtitle: "El Chapo", 
              date: "Nov 6",
              image: AssetImage("assets/images/notification1.png"),
              ),
             NewArrivalScreen(
              image: AssetImage("assets/images/notification2.png"),
              title: "New Arrival", 
              subtitle: "Peaky Blinders", 
              date: "Nov 6"
              ),

              
              SizedBox(height: 20,),
              ComingSoonScreenWidget(
                title: "Castle & Castle",
                ComingSoonImage: AssetImage("assets/images/Castle&castle.png"),
              ),
              ComingSoonScreenWidget(
                title: "Pretty Things",
                ComingSoonImage: AssetImage("assets/images/Pretty Things.png"),
              ),
              ComingSoonScreenWidget(
                title: "Faster",
                ComingSoonImage: AssetImage("assets/images/Faster.png"),
              ),
             
      
          ],
        ),
        ),
      ),
       );
    
  }
}
      
      
      // body: Column(
      //    children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Row(
      //         children: [
      //           Container(
      //             height: 19,
      //             width: 19,
      //             decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Ellipse 6.png"))),
      //             child: Image.asset("assets/images/bi_bell-fill.png"),
                  
                  
      //           ),
      //           SizedBox(width: 10,),
      //           Text("notifications",style: TextStyle(color: Colors.white,fontSize: 16.906,fontWeight: FontWeight.w700),
      //           ),
     
      //         ],
      //       ),
            
            
      //     ),
         
             

         
             



                // Container(
                //   color: Color.fromARGB(255, 104, 100, 100),
                //   width: 375,
                //   height: 65,
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Row(
                //         children: [
                //           Image.asset("assets/images/notification1.png"),
                //           SizedBox(width: 20,),
                          
                          
                          
                //           Column(
                            
                //             children: [
                //               Row(
                //             children: [
                //               Text("New Arrival",style: TextStyle(
                //                     fontSize: 13.72,
                //                     fontWeight: FontWeight.w500,
                //                     color: Colors.white,
                                     
                //                     ),
                //                     ),
                //             ],
                //           ),
                            
                //             Text("El Chapo",style: TextStyle(
                //               fontSize: 13.72,
                //               fontWeight: FontWeight.w500,
                //               color: Colors.white,
                //               //height:10.258
                            
                //               ),
                              
                //               ),
                //               Text("Nov 6",style: TextStyle(
                //               fontSize: 10.51,
                //               fontWeight: FontWeight.w500,
                //               color: Colors.white,
                //               //height: 10.691,
                //               ),
                //               ),

                //           ],
                           
                //           ),

                //         ],

                //       ),


                //     ],
                //   ),
                // ),





                // Container(
                // color:Color.fromARGB(255, 104, 100, 100),
                //   width: 375,
                //   height: 65,
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Row(
                //         children: [
                //           Image.asset("assets/images/notification2.png",),
                //           SizedBox(width: 20,),
                          
                          
                          
                //           Column(
                            
                //             children: [
                //               Row(
                //             children: [
                //               Text("New Arrival",style: TextStyle(
                //                     fontSize: 13.72,
                //                     fontWeight: FontWeight.w500,
                //                     color: Colors.white,
                                     
                //                     ),
                //                     ),
                //             ],
                //           ),
                            
                //             Text("Peaky Blinders",style: TextStyle(
                //               fontSize: 13.72,
                //               fontWeight: FontWeight.w500,
                //               color: Colors.white,
                //               //height:10.258
                            
                //               ),
                              
                //               ),
                //               Text("Nov 6",style: TextStyle(
                //               fontSize: 10.51,
                //               fontWeight: FontWeight.w500,
                //               color: Colors.white,
                //               //height: 10.691,
                //               ),
                //               ),

                //           ],
                           
                //           ),

                //         ],

                //       ),


                //     ],
                //   ),
                // ),

                // SizedBox(height: 30,),
                // Container(
                //   width: 375,
                //   height: 385,
                //   child: Column(
                //     children: [

                //       Container(child: Image.asset("assets/images/Castle&castle.png",),
                //       ),
                //       SizedBox(height: 10,),
                //        Row( //for the remind me & share options on the end
                //         mainAxisAlignment: MainAxisAlignment.end,
                //         children: [
                //           Column(
                //             children: [

                //               Image.asset("assets/images/cminsoonButton.png"),
                //               Text("Remind Me",style: TextStyle(color: Colors.white),
                //           ),
                         

                //             ],
                //           ),
                //           SizedBox(width: 20,),

                //           Column(
                //             children: [

                //               Image.asset("assets/images/bx_bxs-share-alt.png"),
                //               Text("Share",style: TextStyle(color: Colors.white),
                //           ),
                         

                //             ],
                //           ),
                          
                        
                //         ],
                //       ),


                     

                      
                //     ],
                    
                //   )
                  
                // ),
                
               
                


      
       
         
         
     
import 'package:flutter/material.dart';
//import 'package:flutter_application_10_/controller/data_base/data_base.dart';
import 'package:flutter_application_10_/utils/color_constant/color_constant.dart';
import 'package:flutter_application_10_/utils/image_constant/image_constant.dart';
import 'package:flutter_application_10_/view/home_screen/home_screen.dart';
import 'package:flutter_application_10_/view/nav_screen/nav_screen.dart';
//import 'package:flutter_application_10_/utils/image_constant/image_constant.dart';
//import 'package:flutter_application_10_/utils/image_constant/image_constant.dart';
//import 'package:flutter_application_10_/utils/logo/logo.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});
   
  //List<String>values=['assets\images\Rectangle 2.jpg','assets\images\Rectangle 3.jpg','assets\images\Rectangle 4.jpg','assets\images\Rectangle 5.jpg'];
  

  @override
  Widget build(BuildContext context) {
    // List MyImageList=["assets/images/Rectangle 2.png",
    // "assets/images/Rectangle 3.png",
    // "assets/images/Rectangle 4.png",
    // "assets/images/Rectangle 5.png",
    // "assets/images/Group 1.png"
    
    // ]; //MAP USE CHYUNNATHINTE MUNN CHYTHATH FOR THE IMAGES
    return Scaffold(
      backgroundColor: ColorConstant.PrimaryBlack,
    
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => NavScreen()), (route) => false);
          },
           icon: SizedBox(height: 24,width: 24,
           child: Image.asset(ImageConstant.Pencil,color: ColorConstant.PrimaryWhite,),),
           ),
           SizedBox(width: 25,)
        ],
        backgroundColor: ColorConstant.PrimaryBlack,
        elevation: 0,
        toolbarHeight: 120,
        centerTitle: true,
        title: SizedBox(
          height: 38,
          width: 138,
          child: Image.asset("assets/images/logos_netflix.png"), //here all kind of imgs will go
          ),
      ),
                   //body:Container(
                    //Padding(
                                  //   padding: const EdgeInsets.all(30.0),
        // child: GridView.builder(itemCount: DataBase.ProfilesList.length,//DataBase.ProfilesList.length,
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        // mainAxisSpacing:10,
        // crossAxisSpacing: 10 ),
        //  itemBuilder: (context, index) => Container(
        //   color: ColorConstant.LegoRed,
        //   child: Text(DataBase.ProfilesList[index],style: TextStyle(fontSize: 40),), //wehave to show our db names,instd of txt weve 2 write with its clsnme
      
         //),
         //);
      //) gridview
    //),container
    //)

   body: Padding(
    padding: EdgeInsets.all(75),//75 aaki
    child: GridView.builder(
       itemCount:DataBase.MyUserList.length + 1 ,//we used map for the name and text in imageconstant
 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
 crossAxisSpacing: 25,
 mainAxisSpacing: 22,
 mainAxisExtent: 130
 
 ),

itemBuilder: (context, index) => index==DataBase.MyUserList.length ? Column(
  children: [
        Container(
    
      height: 92,width: 100,//chnge vrthi hi8&width
    
      decoration: BoxDecoration(
    
        borderRadius: BorderRadius.circular(7),
    
      ),
    
      child: Image.asset("assets/images/Group 1.png"),
    
    ),
    SizedBox(height: 6,),
    Text("Add Profile",style: TextStyle(color: Colors.white,fontSize: 14),)
  ],
)
:

Padding(padding: EdgeInsets.all(5.0),
child: Column(
  children: [
    Container(
      height: 69,
      width: 73,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8)
      ),
      child:Image.asset(DataBase.MyUserList[index]["url"],height: 121,width: 100,),
    ),
    SizedBox(height: 6,),
    Text(DataBase.MyUserList[index][Text],style: TextStyle(color: Colors.white,fontSize: 14),)

  ],
),
),
// Column(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   crossAxisAlignment: CrossAxisAlignment.center,
//   children: [
//   Image.asset(DataBase.MyUserList[index]["url"],height: 121,width: 100,),
//   Text(DataBase.MyUserList[index][Text],style: TextStyle(color: Colors.white,fontSize: 14),)
//   ],
// ),
    
    
     ),
   ),
    );
  }
}
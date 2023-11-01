import 'package:flutter/material.dart';
import 'package:flutter_application_10_/view/blank_screen/blank_screen.dart';


import '../../utils/color_constant/color_constant.dart';
import '../../utils/image_constant/image_constant.dart';
import '../home_screen/widgets/my_movies_list_builder.dart';


class TvShowsScreen extends StatelessWidget {
  const TvShowsScreen({super.key});

  @override
  Widget build(BuildContext context) {
     TextStyle toptab=TextStyle(color: ColorConstant.PrimaryWhite,fontSize: 17,fontWeight: FontWeight.w500);
    return Scaffold(
       backgroundColor: ColorConstant.PrimaryBlack,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
     Stack(children: [
             Container(
              height: 415,
              decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage(ImageConstant.TvShowsHome),fit: BoxFit.cover)
                ),
                
              
      
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                   children: [
                     
                    Row(
                      children: [
                        SizedBox(
                          width: 53,
                          height: 57,
                          child: Image.asset(ImageConstant.Netflixlogo),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                              
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => BlankScreen(),));
                                },
                                child: Text("TV Shows",
                                style: toptab, //instead of down lines,v can use 1 term for all
                                // style: TextStyle(fontSize: 17,color: ColorConstant.PrimaryWhite),
                                ),
                              ),
                              Text("All Genres",
                              style: toptab,
                              ),
                              // Text("MyList",
                              // style: toptab,
                              // ),
                            ],
                          ),
                        )
                       
                      ],
                    ),
                  
                    Text("#2 in Nigeria Today",style: TextStyle(color: ColorConstant.PrimaryWhite),),
              
                   ],
      
                   
                   
                ),
      
              ),
            ),
             Container(
              height: 415,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:[ColorConstant.PrimaryBlack.withOpacity(.4),ColorConstant.PrimaryBlack.withOpacity(.1)])
              ),
            ),
     ],),
            
           
            SizedBox(height: 15,),
            Center(
              child: SizedBox(
                width: 249,
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                    children: [
                      
                      SizedBox(
                        height: 24,
                        width: 24,
                        
                        child: Image.asset(ImageConstant.Plus),
                        ),
                      
                      Text("MyList",style:TextStyle(fontSize: 13,
                      fontWeight:FontWeight.w400,
                      color:ColorConstant.PrimaryWhite),
                      )
                    ],
                    ),
                    
                   
                    
                    Container(
                      height: 45,
                      width: 111,
                      decoration: BoxDecoration(
                        //EDITED AFTER COMING BACK TO HOSTEL 191023
                        borderRadius: BorderRadius.circular(5.625) ,color: ColorConstant.PrimaryWhite),
                     child: SizedBox(
                      width: 72,
                     height: 30,
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 18,
                          height: 22,
                          child: Image.asset(ImageConstant.Play),
                        ),
                        SizedBox(
                          // width: 39,
                          //  height: 30,
                          child: Text("Play",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),//EDITED AFTER COMING BACK TO HOSTEL 191023
                          
                        )
                      ],
                     ),
                     ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Image.asset(ImageConstant.Report),
                        ),
                        Text("Info",
                        style: TextStyle(color: ColorConstant.PrimaryWhite,fontSize: 13,fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ],
                  
                ),
              ),
            ),
             
            
            MyMoviesListBuilder(title: "Previews",
            shape: BoxShape.circle,
            ImageList:ImageList.Prev,
            
            ),
            MyMoviesListBuilder(title: "Continue watching Shows",
            shape: BoxShape.rectangle,
            ImageList: ImageList.Contnue,
            
            ),
            MyMoviesListBuilder(title: "Popular Shows",
            shape: BoxShape.rectangle,
            ImageList: ImageList.Popular,
            ),
            MyMoviesListBuilder(title: "Trending Now",
            shape: BoxShape.rectangle,
            ImageList: ImageList.Trending,
            ),
            MyMoviesListBuilder(title: "Top10 Nigeria",
            shape: BoxShape.rectangle,
            ImageList: ImageList.Top10Nigeria,
            ),
      
      
          ],
          
          
        ),
      ),
      
      
    );
  }
}

   
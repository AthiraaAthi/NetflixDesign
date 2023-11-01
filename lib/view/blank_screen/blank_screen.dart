import 'package:flutter/material.dart';
import 'package:flutter_application_10_/utils/color_constant/color_constant.dart';
import 'package:flutter_application_10_/view/home_screen/home_screen.dart';
import 'package:flutter_application_10_/view/movies_screen/movies_screen.dart';
import 'package:flutter_application_10_/view/mylist_screen/mylist_screen.dart';
import 'package:flutter_application_10_/view/tv_shows/tv_shows.dart';

class BlankScreen extends StatelessWidget {
  const BlankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.PrimaryBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                    )
                    ); //navigator.push
              },
               child: Text(
                "All",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.677,
                  fontWeight: FontWeight.w400
                ),
                ),
                ),

                TextButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => TvShowsScreen(),
                    )
                    ); //navigator.push
              },
               child: Text(
                "Tv Shows",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 29.68,
                  fontWeight: FontWeight.w600
                ),
                ),
                ),

                TextButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => MoviesScreen(),
                    )
                    ); //navigator.push
              },
               child: Text(
                "Movies",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.677,
                  fontWeight: FontWeight.w400
                ),
                ),
                ),

                TextButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => MyListScreen(),
                    )
                    ); //navigator.push
              },
               child: Text(
                "My List",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.677,
                  fontWeight: FontWeight.w400
                ),
                ),
                ),

                SizedBox(height: 100,),


               Container(
                
                           
                height: 69,
                width: 69,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Cross.png")),shape: BoxShape.circle,color: Colors.white),
               ),
              


          ],
          
        ),
        
      ),
     
    );
  }
}
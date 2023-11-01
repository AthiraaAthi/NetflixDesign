import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_10_/utils/color_constant/color_constant.dart';

import 'package:flutter_application_10_/view/username_screen/username_screen.dart';

class MySplash extends StatefulWidget {//stateless ne stateful aaki for the functionalities like timers but main have to remain as stateless
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserNameScreen()));
     });
    // TODO: implement initState 
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorConstant.PrimaryBlack ,
      body:Column(
        children: [
          SafeArea(
            child: Padding(padding:EdgeInsets.only(top: 332,left: 84),//center mthiyaayrunnu
                  child: Container(
                    height: 56,
                    width: 270,
                    child: Image.asset("assets/images/logos_netflix.png"),
                    
                  ),    
            ),
           ),
                // ElevatedButton(onPressed: (){
                //    Navigator.push(context, MaterialPageRoute(builder:(context) =>UserNameScreen() )
                //    );
                // }, child:Text("press here",style: TextStyle(color: Colors.white),))
        ],
      ),
      );
        
      
    
  }
}
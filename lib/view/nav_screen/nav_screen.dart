import 'package:flutter/material.dart';
import 'package:flutter_application_10_/view/comingsoon_screen/comingsoon_screen.dart';
import 'package:flutter_application_10_/view/download_screen/download_screen.dart';
import 'package:flutter_application_10_/view/home_screen/home_screen.dart';
import 'package:flutter_application_10_/view/more_screen/more_screen.dart';
import 'package:flutter_application_10_/view/movies_screen/movies_screen.dart';
import 'package:flutter_application_10_/view/mylist_screen/mylist_screen.dart';
import 'package:flutter_application_10_/view/search_screen/search_screen.dart';
import 'package:flutter_application_10_/view/tv_shows/tv_shows.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex=0;
  List<Widget>MyWidgetList=[
    HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen(),
    MyListScreen(),
    MoviesScreen(),
    TvShowsScreen()


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
         MyWidgetList[selectedIndex],
      
      
      bottomNavigationBar: BottomNavigationBar(
        

        
         backgroundColor: const Color.fromARGB(255, 45, 41, 41),
         currentIndex: selectedIndex,
         //fixedColor: Colors.white,
         unselectedItemColor: Colors.grey,
         selectedItemColor: Colors.white,
         
        type:BottomNavigationBarType.fixed ,
        onTap: (index){
           selectedIndex=index; //thirich aavan paadilla
          setState(() {
          
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),//items always have to greater than 3
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.playlist_add),label: "ComingSoon"),
          BottomNavigationBarItem(icon: Icon(Icons.download_sharp),label: "DOwnload"),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: "More"),

          ]),
    );//return chyunnathinu epolm ; vnm
  }
}
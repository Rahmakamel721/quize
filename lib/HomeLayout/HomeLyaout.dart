
import 'package:flutter/material.dart';
import 'package:quiz/Page/HomeView/HomeView.dart';
import 'package:quiz/Page/workout/woroutView.dart';

import '../Page/AliceCare/AliceCare.dart';




class HomeLayout extends StatefulWidget {
  static const routeName='Homelayout';
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int slectedIndex=0;
  List<Widget>page=[
    HomeView(),
    WorkoutView(),
    AliceCare(),

  ];
  @override
  Widget build(BuildContext context) {

    var theme=Theme.of(context);
    return Scaffold(

      body: page[slectedIndex],


 bottomNavigationBar:  BottomNavigationBar(
   onTap: ( int value) {
     setState(() {
      slectedIndex=value;
     });
   },

   items: [
     BottomNavigationBarItem( label: ' ',icon: ImageIcon(AssetImage('asste/image/home-05.png'))),
     BottomNavigationBarItem(label: ' ',icon: ImageIcon(AssetImage('asste/image/grid-01.png'))),
    // BottomNavigationBarItem(label: ' ',icon: ImageIcon(AssetImage('asste/image/calendar.png'))),
     BottomNavigationBarItem(label: ' ',icon: ImageIcon(AssetImage('asste/image/user-03.png'))),

   ],
 ),
    ) ;
  }
}

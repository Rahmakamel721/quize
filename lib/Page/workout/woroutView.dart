import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

import '../../core/Plank workout/plank workout.dart';

class WorkoutView extends StatelessWidget {

  const WorkoutView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(child:Image.asset('asste/image/profile.png') ),
       title: Column(
           crossAxisAlignment: CrossAxisAlignment.start,children: [
         Text('Hello,Jade',style: theme.textTheme.bodyMedium,),
         Text('Ready To Workout?',style: theme.textTheme.bodyLarge,)
       ]),
        actions: [ Image.asset('asste/image/bell-Icon.png') ],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: 110,
              color:Color(0xffF8F9FC),
              child:
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column( mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Row(
                          children: [
                            Image.asset('asste/image/heart.png'),
                            SizedBox(
                              width: 2,
                            ),
                            Text('Heart Rate',style: theme.textTheme.bodyMedium,),
                          ],
                        ),
                        Row(
                          children: [
                            Text('81',style: theme.textTheme.bodyLarge,),
                            Text('BPM',style: theme.textTheme.bodySmall,)
                          ],
                        )
                      ],),
                    Container( height: 100,
                      width: 1,
                      color: Colors.black,),
                    Column( mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Row(
                          children: [
                            Image.asset('asste/image/list.png'),
                            SizedBox(
                              width: 2,
                            ),
                            Text('To-do',style: theme.textTheme.bodyMedium,),
                          ],
                        ),
                        Row(
                          children: [
                            Text('32,5',style: theme.textTheme.bodyLarge,),
                            Text('% ',style: theme.textTheme.bodySmall,)
                          ],
                        )
                      ],),
                    Container( height: 100,
                      width: 1,
                      color: Colors.black,),
                    Column( mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        Row(
                          children: [
                            Image.asset('asste/image/callPhoto.png'),
                            SizedBox(
                              width: 2,
                            ),
                            Text('Calo',style: theme.textTheme.bodyMedium,),
                          ],
                        ),

                        Row(
                          children: [
                            Text('1000',style: theme.textTheme.bodyLarge,),
                            Text('call',style: theme.textTheme.bodySmall,)
                          ],
                        ),

                      ],
                    ),

                  ]
              ),),
            Text("Workout Programs",style: theme.textTheme.titleLarge,),



            Container(
              padding: const EdgeInsets.all(8.0),
              width: 200,
              height: 400,
              child: ContainedTabBarView(

                tabs: [
                  Text('All Type',style: theme.textTheme.bodyLarge),
                  Text('Full Body',style: theme.textTheme.bodyLarge),
                  Text('Upper',style: theme.textTheme.bodyLarge),
                  Text('Lower',style: theme.textTheme.bodyLarge),

                ],
                views: [
                  Container(child:
                  SingleChildScrollView(
                    child: Column(children: [
                      PlankWorkout(day: '7 day', title: ' Morning Yoga', des: 'Improve mental focus.', during: ' 30 Min', photo: 'asste/image/photo1.png'),
                      SizedBox(height: 10),
                      PlankWorkout(day: '4 day', title: ' Plank Exercise', des: 'Improve mental focus.', during: ' 20 Min', photo: 'asste/image/photo2.png'),
                    ],),
                  )),
                  Container(child:
                  SingleChildScrollView(
                    child: Column(children: [
                      PlankWorkout(day: '10 day', title: ' Morning Yoga', des: 'Improve mental focus.', during: ' 30 Min', photo: 'asste/image/photo2.png'),
                      SizedBox(height: 10),
                      PlankWorkout(day: '5 day', title: ' Plank Exercise', des: 'Improve mental focus.', during: ' 20 Min', photo: 'asste/image/photo1.png'),
                    ],),
                  )),
                  Container(child: SingleChildScrollView(
                    child: Column(children: [
                      PlankWorkout(day: '7 day', title: ' Morning Yoga', des: 'Improve mental focus.', during: ' 30 Min', photo: 'asste/image/photo1.png'),
                      SizedBox(height: 10),
                      PlankWorkout(day: '4 day', title: ' Plank Exercise', des: 'Improve mental focus.', during: ' 20 Min', photo: 'asste/image/photo2.png'),
                    ],),
                  )),
                  Container(child: SingleChildScrollView(
                    child: Column(children: [
                      PlankWorkout(day: '7 day', title: ' Morning Yoga', des: 'Improve mental focus.', during: ' 30 Min', photo: 'asste/image/photo1.png'),
                      SizedBox(height: 10),
                      PlankWorkout(day: '4 day', title: ' Plank Exercise', des: 'Improve mental focus.', during: ' 20 Min', photo: 'asste/image/photo2.png'),
                    ],),
                  )),
                ],
                onChange: (index) => print(index),
              ),
            ),

          ]

      ),
    )





     ;
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quiz/core/Feature%20Item/Feature%20Item.dart';

import '../../core/Exercise custom/Exercise.dart';

class  HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(  'asste/image/Group1.png') ,
        title: Text(' Moody',style:theme.textTheme.titleLarge ),
        actions: [ Image.asset('asste/image/bell-Icon.png') ],
      ),
      body: Column(
        children: [
          Container(

            child:Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  Text('Hello, Sara Rose',style: theme.textTheme.titleLarge,),
                  SizedBox( height: 5)
                  ,
                  Text('How are you feeling today ?',style: theme.textTheme.bodyLarge,),
                  SizedBox( height: 20),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          // margin: EdgeInsets.all(10),
                          width: 70,
                          height: 70,
                          child: Image.asset('asste/image/love.png'),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:Color(0xffE4E7EC)
                          ),

                        ),
                        Container(
                          //margin: EdgeInsets.all(10),
                          width: 70,
                          height: 70,
                          child: Image.asset('asste/image/cool.png'),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:Color(0xffE4E7EC)
                          ),

                        )
                        ,Container(
                          // margin: EdgeInsets.all(10),
                          width: 70,
                          height: 70,
                          child: Image.asset('asste/image/Happy.png'),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:Color(0xffE4E7EC)
                          ),

                        ),
                        Container(
                          // margin: EdgeInsets.all(10),
                          width: 70,
                          height: 70,
                          child: Image.asset('asste/image/sad.png'),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:Color(0xffE4E7EC)
                          ),

                        )
                      ]),
                  SizedBox( height: 10),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Love',style: theme.textTheme.bodyMedium,),
                      Text('Cool',style: theme.textTheme.bodyMedium,),
                      Text('Happy',style: theme.textTheme.bodyMedium,),
                      Text('Sad',style: theme.textTheme.bodyMedium,)
                    ],
                  ),
                  SizedBox( height: 30),
                ]


            ),



          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Feature',style: theme.textTheme.titleLarge,),
              TextButton(onPressed: (){}, child: Text('seeMore >',style: theme.textTheme.bodyLarge!.copyWith(color: Colors.green),))
            ],
          ) ,


          CarouselSlider(
            options: CarouselOptions(
              height: 150.0,
              viewportFraction: 1,),
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.amber
                    ),
                    child:
                    //Text('text $i', style: TextStyle(fontSize: 16.0)
                    FeatureItem( ),
                  );
                },
              );
            }).toList(),
          ),



          SizedBox( height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Exercise',style: theme.textTheme.titleLarge,),
              TextButton(onPressed: (){}, child: Text('seeMore >',style: theme.textTheme.bodyLarge!.copyWith(color: Colors.green),))
            ],
          ) ,
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ExerciseCustom(title: ' Relaxation', background: 0xffF9F5FF, IconName: 'asste/image/relax.png',),
              ExerciseCustom(title: ' Meditation ', background: 0xffFDF2FA, IconName: 'asste/image/Meditation.png',)
            ],),
          SizedBox( height: 20),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ExerciseCustom(title: ' Beathing', background: 0xffFFFAF5 , IconName: 'asste/image/Beathing.png',),
              SizedBox(height: 10,),
              ExerciseCustom(title: ' Yoga', background: 0xffF0F9FF, IconName: 'asste/image/Yoga.png',)




            ],)
        ],
      ),
    );
  }
}

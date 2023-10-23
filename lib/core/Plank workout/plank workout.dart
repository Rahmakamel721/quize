import 'package:flutter/material.dart';

class PlankWorkout extends StatelessWidget {
  final String day;
  final String title;
  final String des;
  final String during;
  final String photo;
  const PlankWorkout({super.key, required this.day, required this.title, required this.des, required this.during, required this.photo});

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return Container(
      height: 250,
      width: 400,
      color: Color(0xffEAECF5),
      child:Column(

crossAxisAlignment: CrossAxisAlignment.start,

          children: [
        Container(
          margin: EdgeInsets.only(top: 20,left: 10),
          alignment: Alignment.center,
          width: 90,
          height: 45,
          child: Text(day,style: theme.textTheme.bodyMedium)
          ,
          decoration: BoxDecoration(
              borderRadius:  BorderRadius.circular(30), 
              color:Colors.white
          ),

        ),
            SizedBox(width: 8,),
            Expanded(
              child: Row(
                children: [
                Expanded(

                  child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(title,style: theme.textTheme.titleLarge),

                      Text(des,style: theme.textTheme.bodyMedium),

                      Text(during,style: theme.textTheme.bodyMedium),
                    ],
                  ),
                ), Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Image.asset(photo)
                    ],),


              ],),
            )
      ]),

    );
  }
}
// Image.asset(photo)
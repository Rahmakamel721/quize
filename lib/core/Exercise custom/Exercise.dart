import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExerciseCustom extends StatelessWidget {


  final String title;
  final String IconName;
  final int background ;
  const ExerciseCustom({super.key, required this.title, required this.IconName, required this.background});

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return Container(
      width: 150,
      height: 60,
      decoration: BoxDecoration(color: Color( background),
      borderRadius: BorderRadius.circular(20)
    ),
      child: Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Image.asset( IconName),

            Text(title, style:theme.textTheme.bodyLarge ,)
          ]),
    );
  }
}

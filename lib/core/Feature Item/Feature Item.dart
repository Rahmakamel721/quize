import 'package:flutter/material.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return Container(
      color: Color(0xffECFDF3),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Positive vibes',style:theme.textTheme.bodyLarge!.copyWith(color: Colors.grey) ,),
              Text('Boost your mood with ',style:theme.textTheme.bodySmall ),
              SizedBox(height: 4,),
              Text('  positive vibes',style:theme.textTheme.bodySmall ),
              Row( children: [
                 Image.asset('asste/image/_Play button.png'),
                SizedBox(width:  6,),
                Text('10 Min',style: theme.textTheme.bodyLarge,)
              ],)
            ],
          ),
          Column( children: [
            Image.asset( 'asste/image/Walking the Dog.png')
          ],)
        ],
    )
,

      
    );
  }
}

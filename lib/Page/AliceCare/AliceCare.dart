
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AliceCare extends StatelessWidget {
  const AliceCare({super.key});

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title:
        Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [ Image.asset('asste/image/Group3.png')
        ,
        Text('AliceCare',style:theme.textTheme.titleLarge ,)]),
        centerTitle: true,
      ),
      backgroundColor: Color(0xffE4E7EC),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Container(margin:EdgeInsets.all(15),
        child: TextFormField(
          decoration: InputDecoration(

            border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(8)
            ),
            prefixIcon: Icon(Icons.search),
                hintText: '  Article, Video, Aduio and  more ',
          ),

        ),
      ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Hot Topic',style: theme.textTheme.titleLarge,),
              TextButton(onPressed: (){}, child: Text('seeMore >',style: theme.textTheme.bodyLarge!.copyWith(color: Color(0xff5925DC)),))
            ],
          ) ,
          CarouselSlider(
            options: CarouselOptions(height: 150.0,
              viewportFraction: 1,),
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(

                    ),
                    child:
                   
                 Image.asset('asste/image/Frame 3466531.png')
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height:10),
          Text('Get Tips',style: theme.textTheme.titleLarge,),
          SizedBox(height:10),
          Container(
            height: 250,
            width: 400,
            color: Color(0xffE4E7EC),
            child: Row(children: [
              Image.asset('asste/image/Doctor-PNG-Images 1.png'),
              Expanded(
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                  Text('Connect with doctors & get suggestions',style: theme.textTheme.bodyLarge,),
                  Text('Connect now and get expert insights ',style: theme.textTheme.bodyMedium,),
                  ElevatedButton( style:  ButtonStyle( backgroundColor:MaterialStatePropertyAll(Color(0xff5925DC))),onPressed: (){}, child: Text('view details'),)
                ],),
              )
            ]),

          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Cycle Phases and Period',style: theme.textTheme.bodyLarge,),
              TextButton(onPressed: (){}, child: Text('seeMore >',style: theme.textTheme.bodyLarge!.copyWith(color: Color(0xff5925DC)),))
            ],
          ) ,

        ],
      ),

    );
  }
}

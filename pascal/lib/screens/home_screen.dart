import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "lib/assets/pascal1.jpg",
    "lib/assets/pascal2.png",
    "lib/assets/pascal3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        CarouselSlider.builder(
          itemCount: images.length,
          options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2)),
          itemBuilder: (context, index, realIndex) {
            return Container(
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          
          child: Text('News', style: TextStyle(color: Colors.grey),),
        ),
        SizedBox(
          height: 500,
          child: ListView.builder(itemBuilder: (context, index){
            return Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(radius: 33,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('3 marzo 2023', style: TextStyle(color: Colors.grey),),
                              Text('data', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Divider(thickness: 0.5,),
                ),
              ],
            );
          }),
        )
      ],
    ));
  }
}

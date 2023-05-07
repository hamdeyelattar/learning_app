
import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/number.dart';

class ColorsPage   extends StatelessWidget {
  const ColorsPage  ({Key? key}) : super(key: key);

final List<Item> colorsPage = const [
    Item(
      sound: 'black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'kuro',
      enName: 'black',
    ),
    Item(
      sound: 'brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'chairo ',
      enName: 'brown',
    ),
    Item(
      sound: 'dusty yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'kiiro',
      enName: 'yellow',
    ),
    Item(
      sound: 'gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'haiiro',
      enName: 'gray',
    ),
    
    Item(
      sound: 'green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'midori',
      enName: 'green',
    ),
    Item(
      sound: 'red.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: 'aka',
      enName: 'red',
    ),
    Item(
      sound: 'white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: 'shiro',
      enName: 'white',
    ),
    Item(
      sound: 'yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'kiiro',
      enName: 'yellow',
    ),
    Item(
      sound: 'black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'kuro',
      enName: 'black',
    ),
    Item(
      sound: 'white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: 'shiro ',
      enName: 'white',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount:colorsPage.length ,
        itemBuilder: (context, index) {

          return ListItem(number: colorsPage[index], color: const Color(0xff79359F), itemType: 'colors',);

        },
      ),

    );
  }
}
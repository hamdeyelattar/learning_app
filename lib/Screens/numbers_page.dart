import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<Item> numbers = const [
    Item(
      sound: 'number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'one',
    ),
    Item(
      sound: 'number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'two',
    ),
    Item(
      sound: 'number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'three',
    ),
    Item(
      sound: 'number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Yon',
      enName: 'four',
    ),
    Item(
      sound:'number_five_sound.mp3' ,
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'five',
    ),
    Item(
      sound: 'number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'six',
    ),
    Item(
      sound: 'number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Nana',
      enName: 'seven',
    ),
    Item(
      sound: 'number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      enName: 'eight',
    ),
    Item(
      sound: 'number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyuu',
      enName: 'nine',
    ),
    Item(
      sound: 'number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Juu',
      enName: 'ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount:numbers.length ,
        itemBuilder: (context, index) {

          return ListItem(number: numbers[index],  color: const Color(0xffEF9235), itemType: 'numbers',);

        },
      ),
    );
  }
  List<Widget> getList (List<Item>numbers){
    List<ListItem> itemsList = [];
    for(int i =  0; i< numbers.length; i++,)
    {
      itemsList.add(ListItem(number: numbers[i], color: const Color(0xffEF9235), itemType: 'numbers',));
    }
    return itemsList;
  }

}
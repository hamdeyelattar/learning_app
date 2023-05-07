import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';

import 'package:toku/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);
 final List<Item> familyMembers = const [
    Item(
      sound: 'father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'chichi',
      enName: 'father',
    ),
    Item(
      sound: 'mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'haha',
      enName: 'mother',
    ),
    Item(
      sound: 'older bother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'ani',
      enName: 'brother',
    ),
    Item(
      sound: 'older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'ane',
      enName: 'sister',
    ),
    
    Item(
      sound: 'son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'musuko',
      enName: 'son',
    ),
    Item(
      sound: 'daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'musume',
      enName: 'daughter',
    ),
    Item(
      sound: 'younger brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otouto',
      enName: 'younger brother',
    ),
    Item(
      sound: 'younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'imouto',
      enName: 'younger sister',
    ),
    Item(
      sound: 'grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'ojii san',
      enName: 'grand father',
    ),
    Item(
      sound: 'grand mother.wav' ,
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'obaa san',
      enName: 'grand mother',
    ),
  ];

  @override
  Widget build(BuildContext context) {
   
  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount:familyMembers.length ,
        itemBuilder: (context, index) {

          return ListItem(number: familyMembers[index], color: const Color.fromARGB(255, 24, 119, 5), itemType: 'family_members',);

        },
      ),

    );
  }
}
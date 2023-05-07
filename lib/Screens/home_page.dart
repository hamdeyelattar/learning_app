import 'package:flutter/material.dart';
import 'package:toku/Screens/colors_page.dart';
import 'package:toku/Screens/family_member_page.dart';
import 'package:toku/Screens/numbers_page.dart';
import 'package:toku/Screens/phrases_page.dart';
import 'package:toku/components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku'),
      ),
      body: Column( 
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
              }));
            },
            
            text: 'Numbers',
            color: const Color(0xffEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyMembersPage();
              }));
            },
            color: const Color.fromARGB(255, 4, 122, 0),
            text: 'Family Members',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return const ColorsPage();
                },
              ));
            },
            text: 'Colors',
            color: const Color.fromARGB(255, 113, 20, 141),
          ),
          Category(
             onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return const PhrasesPage();
                },
              ));
            },
            text: 'Phrases',
            color: const Color.fromARGB(255, 17, 129, 204),
          ),
        ],
      ),
    );
  }
}


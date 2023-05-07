import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/phrase.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Phrase> Phrases = const [
    Phrase(
      sound: 'are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'are you coming',
    ),
    Phrase(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai ',
      enName: 'dont forget to subscribe',
    ),
    Phrase(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    Phrase(
      sound: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka.',
      enName: 'how are you feeling',
    ),
    Phrase(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    Phrase(
      sound: 'i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'i love programming',
    ),
    Phrase(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',
    ),
    Phrase(
      sound: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name',
    ),
    Phrase(
      sound: 'where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
    ),
    Phrase(
      sound: 'yes_im_coming.wav',
      jpName: 'Hai, kimasu',
      enName: 'yes im coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: Phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            phrase: Phrases[index],
            color: const Color.fromARGB(255, 17, 129, 204),
            itemType: 'phrases',
          );
        },
      ),
    );
    ;
  }
}

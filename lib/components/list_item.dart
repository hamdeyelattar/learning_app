import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'package:toku/models/phrase.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.number,
    required this.color,
    required this.itemType,
  }) : super(key: key);
  final Item number;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      color: color,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () {
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play(number.sound);
                  } catch (ex) {
                    print('ex');
                  }
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 35,
                )),
          ),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem({
    Key? key,
    required this.phrase,
    required this.color,
    required this.itemType,
  }) : super(key: key);
  final Phrase phrase;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () {
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play(phrase.sound);
                  } catch (ex) {
                    print('ex');
                  }
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 35,
                )),
          ),
        ],
      ),
    );
  }
}

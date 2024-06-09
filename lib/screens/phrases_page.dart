// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:toku_app/components/phrases_item.dart';
import 'package:toku_app/models/item.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
  final List<ItemModel> phrases = [
    ItemModel(
        enName: 'Are You Coming ?',
        jpName: 'anata wa rai te iya masu ka ?',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemModel(
        enName: 'Dont Forget To Subscribe',
        jpName: 'koudoku suru koto wa wasure nai de...',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemModel(
        enName: 'How Are You Feeling',
        jpName: 'choushi wa dou desu ka ?',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemModel(
        enName: 'I Love Anime',
        jpName: 'watashi wa anime ga daisuk desu',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemModel(
        enName: 'I Love Programming',
        jpName: 'programming ga daisuk ',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemModel(
        enName: 'Programming Is Easy',
        jpName: 'programming ga kantan',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    ItemModel(
        enName: 'What Is Your Name',
        jpName: 'anata no namae wa nani desu ka ?',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ItemModel(
        enName: 'Where Are You Going',
        jpName: 'doko ni iki masu ka ',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    ItemModel(
        enName: 'Yes Im Coming',
        jpName: 'hai, watashi wa rai te iya masu',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff49332A),
        title: const Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            item: phrases[index],
            color: const Color(0xff4DACC6),
          );
        },
      ),
    );
  }
}

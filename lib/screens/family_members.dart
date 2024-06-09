import 'package:flutter/material.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({super.key});
  final List<ItemModel> items = [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      jpName: 'Chichioya ',
      enName: 'father',
      image: 'assets/images/family_members/family_father.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      jpName: 'Musume  ',
      enName: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grandfather.wav',
      jpName: 'Ojisan ',
      enName: 'grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      jpName: 'Hahaoya ',
      enName: 'mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grandmother.wav',
      jpName: 'Sobo ',
      enName: 'grand mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/olderbrother.wav',
      jpName: 'Nisan ',
      enName: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/oldersister.wav',
      jpName: 'Ane ',
      enName: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      jpName: 'Musuko ',
      enName: 'son',
      image: 'assets/images/family_members/family_son.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/youngerbrother.wav',
      jpName: 'Otouto ',
      enName: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/youngersister.wav',
      jpName: 'Imoto',
      enName: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF453025),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListItem(
            color: const Color(0xFF528031),
            item: items[index],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_members.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF483229),
      ),
      body: Column(
        children: [
          Category(
            text: ('Members'),
            color: const Color(0xFFF99430),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
          ),
          Category(
              text: ('Family Members'),
              color: const Color(0xFF528031),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FamilyMembersPage();
                }));
              }),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
            text: ('Colors'),
            color: const Color(0xFF7C3FA1),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
            text: ('Phrases'),
            color: const Color(0xFF46A5CA),
          )
        ],
      ),
    );
  }
}
//aa
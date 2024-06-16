import 'package:flutter/material.dart';
import 'package:toku/Screens/colors_page.dart';
import 'package:toku/Screens/family_members_page.dart';
import 'package:toku/Screens/numbers_page.dart';
import 'package:toku/Screens/pharases_page.dart';

import '../Components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text(
            'toku',
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        children: [
          Category(
            title: 'Numbers',
            color: const Color(0xfff99531),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const NumbersPage();
                },
              ));
            },
          ),
          Category(
            title: 'Family Members',
            color: const Color(0xff5d8b3e),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const FamilyMembers();
                },
              ));
            },
          ),
          Category(
            title: 'Colors',
            color: const Color(0xff854cae),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ColorsPage();
                },
              ));
            },
          ),
          Category(
            title: 'Phrases',
            color: const Color(0xff51b0d5),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const PhrasesPage();
                },
              ));
            },
          )
        ],
      ),
    );
  }
}

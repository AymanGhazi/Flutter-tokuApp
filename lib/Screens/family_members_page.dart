import 'package:flutter/material.dart';
import 'package:toku/Classes/item_model.dart';
import 'package:toku/Components/item.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  @override
  Widget build(BuildContext context) {
    const List<itemModel> familyMembers = [
      itemModel(
          image: 'assets/images/family_members/family_daughter.png',
          sound: 'sounds/family_members/daughter.wav',
          jpName: 'Musume',
          enName: 'Daughter'),
      itemModel(
          image: 'assets/images/family_members/family_father.png',
          sound: 'sounds/family_members/father.wav',
          jpName: 'Chichioya',
          enName: 'father'),
      itemModel(
          image: 'assets/images/family_members/family_mother.png',
          sound: 'sounds/family_members/mother.wav',
          jpName: 'Hahaoya',
          enName: 'mother'),
      itemModel(
          image: 'assets/images/family_members/family_grandfather.png',
          sound: 'sounds/family_members/grand_father.wav',
          jpName: 'Ojīsan',
          enName: 'grand father'),
      itemModel(
          image: 'assets/images/family_members/family_grandmother.png',
          sound: 'sounds/family_members/grand_mother.wav',
          jpName: 'Sobo',
          enName: 'grand mother'),
      itemModel(
          image: 'assets/images/family_members/family_older_brother.png',
          sound: 'sounds/family_members/older_bother.wav',
          jpName: 'Nīsan',
          enName: 'older bother'),
      itemModel(
          image: 'assets/images/family_members/family_older_sister.png',
          sound: 'sounds/family_members/older_sister.wav',
          jpName: 'Ane',
          enName: 'older sister'),
      itemModel(
          image: 'assets/images/family_members/family_son.png',
          sound: 'sounds/family_members/son.wav',
          jpName: 'Musuko',
          enName: 'son'),
      itemModel(
          image: 'assets/images/family_members/family_younger_brother.png',
          sound: 'sounds/family_members/younger_brohter.wav',
          jpName: 'otōto',
          enName: 'younger brohter'),
      itemModel(
          image: 'assets/images/family_members/family_younger_sister.png',
          sound: 'sounds/family_members/younger_sister.wav',
          jpName: 'Imōto',
          enName: 'younger sister')
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text("Family Members",
              style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
        body: ListView.builder(
            itemCount: familyMembers.length,
            itemBuilder: (context, index) {
              return Item(item: familyMembers[index],color: const Color(0xff5d8b3e));
            }));
  }

  List<Item> getlist(List<itemModel> numbers) {
    List<Item> itemslist = [];
    for (var num in numbers) {
      itemslist.add(Item(item: num,color: const Color(0xff5d8b3e)));
    }
    return itemslist;
  }
}

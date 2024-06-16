import 'package:flutter/material.dart';
import 'package:toku/Classes/item_model.dart';
import 'package:toku/Components/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<itemModel> numbers = [
      itemModel(
          image: 'assets/images/numbers/number_one.png',
          sound: 'sounds/numbers/number_one_sound.mp3',
          jpName: 'ichi',
          enName: 'one'),
      itemModel(
          image: 'assets/images/numbers/number_two.png',
          sound: 'sounds/numbers/number_two_sound.mp3',
          jpName: 'Ni',
          enName: 'two'),
      itemModel(
          image: 'assets/images/numbers/number_three.png',
          sound: 'sounds/numbers/number_three_sound.mp3',
          jpName: 'Suan',
          enName: 'three'),
      itemModel(
          image: 'assets/images/numbers/number_four.png',
          sound: 'sounds/numbers/number_four_sound.mp3',
          jpName: 'Shi',
          enName: 'four'),
      itemModel(
          image: 'assets/images/numbers/number_five.png',
          sound: 'sounds/numbers/number_five_sound.mp3',
          jpName: 'Go',
          enName: 'five'),
      itemModel(
          image: 'assets/images/numbers/number_six.png',
          sound: 'sounds/numbers/number_six_sound.mp3',
          jpName: 'Roku',
          enName: 'six'),
      itemModel(
          image: 'assets/images/numbers/number_seven.png',
          sound: 'sounds/numbers/number_seven_sound.mp3',
          jpName: 'Sebun',
          enName: 'seven'),
      itemModel(
          image: 'assets/images/numbers/number_eight.png',
          sound: 'sounds/numbers/number_eight_sound.mp3',
          jpName: 'hachi',
          enName: 'eight'),
      itemModel(
          image: 'assets/images/numbers/number_nine.png',
          sound: 'sounds/numbers/number_nine_sound.mp3',
          jpName: 'Kyū',
          enName: 'nine'),
      itemModel(
          image: 'assets/images/numbers/number_ten.png',
          sound: 'sounds/numbers/number_ten_sound.mp3',
          jpName: 'Jū',
          enName: 'ten')
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text("Numbers",
              style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Item(item: numbers[index],color: const Color(0xfff99531),);
            }));
  }

  List<Item> getlist(List<itemModel> numbers) {
    List<Item> itemslist = [];
    for (var num in numbers) {
      itemslist.add(Item(item: num,color: const Color(0xfff99531)));
    }
    return itemslist;
  }
}

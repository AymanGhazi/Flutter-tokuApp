import 'package:flutter/material.dart';
import 'package:toku/Classes/item_model.dart';
import 'package:toku/Components/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<itemModel> colors = [
      itemModel(
          image: 'assets/images/colors/color_black.png',
          sound: 'sounds/colors/black.wav',
          jpName: 'Burakku',
          enName: 'black'),
      itemModel(
          image: 'assets/images/colors/color_brown.png',
          sound: 'sounds/colors/brown.wav',
          jpName: 'Chairo',
          enName: 'brown'),
      itemModel(
          image: 'assets/images/colors/color_dusty_yellow.png',
          sound: 'sounds/colors/dusty_yellow.wav',
          jpName: 'Hokori ppoi kiiro',
          enName: 'dusty yellow'),
      itemModel(
          image: 'assets/images/colors/color_gray.png',
          sound: 'sounds/colors/gray.wav',
          jpName: 'Gurē',
          enName: 'gray'),
      itemModel(
          image: 'assets/images/colors/color_green.png',
          sound: 'sounds/colors/green.wav',
          jpName: 'Midori',
          enName: 'green'),
      itemModel(
          image: 'assets/images/colors/color_red.png',
          sound: 'sounds/colors/red.wav',
          jpName: 'Aka',
          enName: 'red'),
     
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text("Colors",
              style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
        body: ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return Item(item: colors[index] ,color: const Color(0xff854cae),);
            }));
  }

  List<Item> getlist(List<itemModel> numbers) {
    List<Item> itemslist = [];
    for (var num in numbers) {
      itemslist.add(Item(item: num , color: const Color(0xff854cae), ));
    }
    return itemslist;
  }
}

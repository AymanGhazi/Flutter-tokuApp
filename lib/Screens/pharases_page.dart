import 'package:flutter/material.dart';
import 'package:toku/Classes/item_model.dart';
import 'package:toku/Components/phrase_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<itemModel> phrases = [
      itemModel(
          sound: 'sounds/phrases/are_you_coming.wav',
          jpName: 'Kimasu ka',
          enName: 'are you coming ?'),
      itemModel(
          sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
          jpName: 'Kōdoku suru koto o wasurenaide kudasai',
          enName: 'do not forget_to subscribe'),
      itemModel(
          sound: 'sounds/phrases/how_are_you_feeling.wav',
          jpName: 'Go kibun wa ikagadesu ka',
          enName: 'how are you feeling ?'),
      itemModel(
          sound: 'sounds/phrases/i_love_anime.wav',
          jpName: 'Watashi wa anime ga daisukidesu',
          enName: 'I love anime'),
      itemModel(
          sound: 'sounds/phrases/i_love_programming.wav',
          jpName: 'Watashi wa puroguramingu daisukidesu',
          enName: 'I love programming'),
      itemModel(
          sound: 'sounds/phrases/programming_is_easy.wav',
          jpName: 'Puroguramingu wa kantandesu',
          enName: 'programming is easy'),
      itemModel(
          sound: 'sounds/phrases/what_is_your_name.wav',
          jpName: 'Namae wa nandesu ka',
          enName: 'what is your name ?'),
      itemModel(
          sound: 'sounds/phrases/where_are_you_going.wav',
          jpName: 'Doko ni iku no',
          enName: 'where are you going ?'),
      itemModel(
          sound: 'sounds/phrases/yes_im_coming.wav',
          jpName: 'Hai watashi wa kite imasu',
          enName: 'yes I am coming '),
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text("Phrases",
              style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
        body: ListView.builder(
            itemCount: phrases.length,
            itemBuilder: (context, index) {
              return PhraseItem(item: phrases[index],color: const Color(0xff51b0d5),);
            }));
  }

  List<PhraseItem> getlist(List<itemModel> numbers) {
    List<PhraseItem> itemslist = [];
    for (var num in numbers) {
      itemslist.add(PhraseItem(item: num,color: const Color(0xff51b0d5)));
    }
    return itemslist;
  }
}

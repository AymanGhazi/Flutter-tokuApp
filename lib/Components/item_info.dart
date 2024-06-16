import 'package:flutter/material.dart';
import 'package:toku/Classes/item_model.dart';

class ItemInfo extends StatelessWidget {
  final itemModel item;
  const ItemInfo({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.jpName,
                style: const TextStyle(color: Colors.white, fontSize: 15)),
            Text(item.enName,
                style: const TextStyle(color: Colors.white, fontSize: 15)),
          ],
        ),
      ),
      const Spacer(
        flex: 1,
      ),
      Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
              onPressed: () async {
               await item.playSound();
                //play sound
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 25,
              )))
    ]);
  }
}

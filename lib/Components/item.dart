import 'package:flutter/material.dart';
import 'package:toku/Classes/item_model.dart';
import 'package:toku/Components/item_info.dart';

class Item extends StatelessWidget {
  final itemModel item;
  final Color color;

  const Item({super.key, required this.item, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(children: [
        item.image == null
            ? const SizedBox()
            : Container(
                color: const Color(0xffFFF6DC),
                child: Image.asset(item.image!)),
        Expanded(
          child: ItemInfo(item: item),
        )
      ]),
    );
  }
}

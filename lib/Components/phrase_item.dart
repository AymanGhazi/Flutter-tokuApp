import 'package:flutter/material.dart';
import 'package:toku/Classes/item_model.dart';
import 'package:toku/Components/item_info.dart';

class PhraseItem extends StatelessWidget {
  final itemModel item;
  final Color color;

  const PhraseItem({super.key, required this.item,required this.color});
  @override
  Widget build(BuildContext context) { 

    return Container(
      height: 100,
      color: color,
      child: ItemInfo(item: item,));
  }
}

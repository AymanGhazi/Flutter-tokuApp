
// ignore: must_be_immutable
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  String title;
  Color? color;
  VoidCallback? onTap;
  Category({super.key, required this.title, this.color,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 56,
        width: double.infinity,
        color: color,
        child: Text(title,
            style: const TextStyle(color: Colors.white, fontSize: 18)),
      ),
    );
  }
}
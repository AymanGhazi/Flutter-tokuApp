// ignore: camel_case_types
import 'package:audioplayers/audioplayers.dart';

class PharseModel{
  final String jpName;
  final String enName;
  final String sound;
  
 const PharseModel({required this.jpName,required this.enName,required this.sound });

playSound() async {
   final player = AudioPlayer();
   await player.play(AssetSource(sound));
}
}
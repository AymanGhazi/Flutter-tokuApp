import 'package:audioplayers/audioplayers.dart';
class itemModel{
  final String? image;
  final String jpName;
  final String enName;
  final String sound;

 const itemModel({ this.image,required this.jpName,required this.enName,required this.sound});

playSound() async {
   final player = AudioPlayer();
   await player.play(AssetSource(sound));
}

}
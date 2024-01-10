// audio_util.dart
import 'package:audioplayers/audio_cache.dart';

class AudioUtil {
  final player = AudioCache();

  void play(String audioFileName) {
    player.play(audioFileName);
  }
}

import 'package:flutter/material.dart';
import 'package:tips_music/models/music_model.dart';
import 'package:tips_music/services/music_service.dart';

class MusicProvider extends ChangeNotifier {
  List<Music> musicList = [];

  final MusicService _musicService = MusicService();

  Future<void> getMusicList() async {
    musicList = await _musicService.getMusicListApi();

    notifyListeners();
  }
}

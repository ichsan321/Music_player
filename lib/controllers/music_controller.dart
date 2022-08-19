import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:test_app/constants/state.dart';
import 'package:test_app/models/music.dart';
import 'package:test_app/repositories/music_repository.dart';

class MusicController extends ChangeNotifier {
  final MusicRepository _musicRepository = MusicRepository();
  final AudioPlayer audioPlayer = AudioPlayer();

  DataState dataState = DataState.loading;
  List<Music> musicList = [];

  bool playMusic = false;
  bool pauseMusic = true;
  String artistName = "";

  int indexMusic = -1;
  String searchTerm = 'Brunomars';

  void changeState(DataState state) {
    dataState = state;
    notifyListeners();
  }

  void updateMusicPlayAndIndex(int index, bool play) {
    indexMusic = index;
    playMusic = play;
    notifyListeners();
  }

  void updateMusicPause(bool value) {
    pauseMusic = value;
    notifyListeners();
  }

  void updateSearchTerm(String value) {
    searchTerm = value;
    notifyListeners();
  }

  void getMusicList() async {
    changeState(DataState.loading);

    try {
      musicList = await _musicRepository.getMusicList(searchTerm);
      changeState(DataState.filled);
    } catch (e) {
      changeState(DataState.error);
    }
  }
}

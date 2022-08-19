import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:test_app/models/music.dart';
import 'package:test_app/models/response_result.dart';
import 'package:test_app/utils/api.dart';

class MusicRepository {
  final API _api = API();
  Future<List<Music>> getMusicList(String searchTerm) async {
    try {
      Response response = await _api.dio.get('/search?', queryParameters: {
        'term': searchTerm,
        'limit': 7,
        'entity': 'song',
      });

      ResponseResult responseResult =
          ResponseResult.fromJson(jsonDecode(response.data));
      List<Music> musicList =
          responseResult.results.map((e) => Music.fromJson(e)).toList();

      return musicList;
    } catch (e) {
      return [];
    }
  }
}

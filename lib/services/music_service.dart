import 'package:dio/dio.dart';
import 'package:tips_music/models/music_model.dart';

class MusicService {
  final String serverUrl = "https://coded-meditation.eapi.joincoded.com/music";
  final _dio = Dio();

  Future<List<Music>> getMusicListApi() async {
    List<Music> musics = [];
    try {
      Response response = await _dio.get(serverUrl);
      musics = (response.data as List)
          .map((music) => Music.fromJson(music))
          .toList();
    } on DioError catch (error) {
      print(error);
    }
    return musics;
  }
}

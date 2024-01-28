import 'package:dio/dio.dart';
import 'package:tips_music/models/meditation_model.dart';

class MeditationService {
  final String serverUrl =
      "https://coded-meditation.eapi.joincoded.com/meditation";
  final _dio = Dio();

  Future<List<Meditation>> getMeditationListApi() async {
    List<Meditation> meditations = [];
    try {
      Response response = await _dio.get(serverUrl);
      meditations = (response.data as List)
          .map((meditation) => Meditation.fromJson(meditation))
          .toList();
    } on DioError catch (error) {
      print(error);
    }
    return meditations;
  }
}

import 'package:dio/dio.dart';
import 'package:tips_music/models/tips_model.dart';

class TipsService {
  final String serverUrl = "https://coded-meditation.eapi.joincoded.com/tips";
  final _dio = Dio();

  Future<List<Tips>> getTipsListApi() async {
    List<Tips> tip = [];
    try {
      Response response = await _dio.get(serverUrl);
      tip = (response.data as List).map((tips) => Tips.fromJson(tips)).toList();
    } on DioError catch (error) {
      print(error);
    }
    return tip;
  }
}

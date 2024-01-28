import 'package:flutter/material.dart';
import 'package:tips_music/models/tips_model.dart';
import 'package:tips_music/services/tips_service.dart';

class TipsProvider extends ChangeNotifier {
  List<Tips> tipsList = [];

  final TipsService _tipsService = TipsService();

  Future<void> getTipsList() async {
    tipsList = await _tipsService.getTipsListApi();

    notifyListeners();
  }
}

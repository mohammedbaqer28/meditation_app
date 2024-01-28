import 'package:flutter/material.dart';
import 'package:tips_music/models/meditation_model.dart';
import 'package:tips_music/services/meditation_service.dart';

class MeditationProvider extends ChangeNotifier {
  List<Meditation> meditationList = [];

  final MeditationService _meditationService = MeditationService();

  Future<void> getMeditationList() async {
    meditationList = await _meditationService.getMeditationListApi();

    notifyListeners();
  }
}

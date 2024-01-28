import 'dart:convert';

Meditation meditationFromJson(String str) =>
    Meditation.fromJson(json.decode(str));

String meditationToJson(Meditation data) => json.encode(data.toJson());

class Meditation {
  int id;
  String title;
  String file;

  Meditation({
    required this.id,
    required this.title,
    required this.file,
  });

  factory Meditation.fromJson(Map<String, dynamic> json) => Meditation(
        id: json["id"],
        title: json["title"],
        file: json["file"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "file": file,
      };
}

import 'dart:convert';

Music musicFromJson(String str) => Music.fromJson(json.decode(str));

String musicToJson(Music data) => json.encode(data.toJson());

class Music {
  int id;
  String title;
  String file;

  Music({
    required this.id,
    required this.title,
    required this.file,
  });

  factory Music.fromJson(Map<String, dynamic> json) => Music(
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

import 'dart:convert';

Tips tipsFromJson(String str) => Tips.fromJson(json.decode(str));

String tipsToJson(Tips data) => json.encode(data.toJson());

class Tips {
  int id;
  String text;
  String author;
  List<int> upvotes;
  List<String> downvotes;

  Tips({
    required this.id,
    required this.text,
    required this.author,
    required this.upvotes,
    required this.downvotes,
  });

  factory Tips.fromJson(Map<String, dynamic> json) => Tips(
        id: json["id"],
        text: json["text"],
        author: json["author"],
        upvotes: List<int>.from(json["upvotes"].map((x) => x)),
        downvotes: List<String>.from(json["downvotes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
        "author": author,
        "upvotes": List<dynamic>.from(upvotes.map((x) => x)),
        "downvotes": List<dynamic>.from(downvotes.map((x) => x)),
      };
}

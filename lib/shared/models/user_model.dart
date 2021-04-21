import 'dart:convert';

class UserModel {
  final String name;
  final String avatarURL;
  final int score;

  UserModel({
    required this.name,
    required this.avatarURL,
    this.score = 0,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return new UserModel(
      name: map['name'] as String,
      avatarURL: map['avatarURL'] as String,
      score: map['score'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'avatarURL': this.avatarURL,
      'score': this.score,
    };
  }

  String toJson() => json.encode(toMap());
  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}

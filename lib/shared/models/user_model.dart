class UserModel {
  final String name;
  final String avatarURL;
  final int score;

  UserModel({
    required this.name,
    required this.avatarURL,
    this.score = 0,
  });
}

class User {
  final String login;
  final String avatarUrl;
  final double score;

  User({required this.login, required this.avatarUrl, required this.score});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      login: json['login'],
      avatarUrl: json['avatar_url'],
      score: json['score'].toDouble(),
    );
  }
}

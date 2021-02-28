class User {
  final String name;
  final String username;
  final String profileImage;
  final String message;

  User({
    this.name,
    this.username,
    this.profileImage,
    this.message,
  });

  factory User.fromJson(json) {
    return User(
      name: json['name'],
      username: json['username'],
      profileImage: json['profileImage'],
      message: json['message'],
    );
  }
}

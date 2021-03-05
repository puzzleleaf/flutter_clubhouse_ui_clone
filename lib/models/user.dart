class User {
  final String name;
  final String username;
  final String profileImage;
  final String lastAccessTime;
  final String followers;
  final String following;
  final bool isNewUser;

  User({
    this.name,
    this.username,
    this.profileImage,
    this.followers,
    this.following,
    this.lastAccessTime,
    this.isNewUser,
  });

  factory User.fromJson(json) {
    return User(
      name: json['name'],
      username: json['username'],
      profileImage: json['profileImage'],
      lastAccessTime: json['lastAccessTime'],
      followers: json['followers'],
      following: json['following'],
      isNewUser: json['isNewUser'],
    );
  }
}

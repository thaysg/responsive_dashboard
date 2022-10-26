class Users {
  final int id;
  final String avatar;
  final String name;

  const Users({
    required this.id,
    required this.name,
    required this.avatar,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json['id'],
        name: json['name'],
        avatar: json['avatar'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'avatar': avatar,
        'name': name,
      };
}

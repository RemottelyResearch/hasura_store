import 'dart:convert';

class UserModel {
  final String id;
  final String name;
  final String email;

  UserModel({
    this.id,
    this.name,
    this.email,
  });

  UserModel copyWith({
    String id,
    String name,
    String email,
  }) =>
      UserModel(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
      );

  factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
      };

  static List<UserModel> fromJsonList(List list) {
    if (list == null) return null;
    return list
        .map((item) => item.cast<String, dynamic>())
        .map<UserModel>((item) => UserModel.fromMap(item))
        .toList();
  }
}

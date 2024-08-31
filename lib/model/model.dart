class User {
  late int id;
  late String name, email, photo;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.photo,
  });

  factory User.fromMap(Map m1) {
    return User(
      id: m1['id'],
      name: m1['name'],
      email: m1['email'],
      photo: m1['photo'],
    );
  }
}

class User {
  String id;
  String name;
  String lastName;
  String phone;
  String email;
  List<Location> locations;

  User({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.locations,
  });

  factory User.empty() {
    return User(
        id: "", name: "", lastName: "", phone: "", email: "", locations: []);
  }
}

class Location {
  String location;
  bool favorite;
  Location({required this.location, required this.favorite});
}

class User {
  String id;
  String name;
  String phone;
  String email;
  List<Location> locations;

  User({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.locations,
  });

  factory User.empty() {
    return User(id: "", name: "", phone: "", email: "", locations: []);
  }
}

class Location {
  String location;
  Location({required this.location});
}

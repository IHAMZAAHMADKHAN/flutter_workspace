class Person {
  final String name;
  final String address;
  final int age;
  final String image;
  final String description;

// Constructor
  Person(
      {required this.name,
      required this.address,
      required this.age,
      required this.image,
      required this.description});

// Convert JSON to Person Object
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      address: json['address'],
      age: json['age'],
      image: json['image'],
      description: json['description'],
    );
  }
}

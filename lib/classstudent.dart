import 'dart:convert';

class Student {
  final String name;
  final String address;
  Student({
    required this.name,
    required this.address,
  });

  Student copyWith({
    String? name,
    String? address,
  }) {
    return Student(
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'address': address,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      name: map['name'] ?? '',
      address: map['address'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Student.fromJson(String source) => Student.fromMap(json.decode(source));

  @override
  String toString() => 'Student(name: $name, address: $address)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Student &&
      other.name == name &&
      other.address == address;
  }

  @override
  int get hashCode => name.hashCode ^ address.hashCode;
}

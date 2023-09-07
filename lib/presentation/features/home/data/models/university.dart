import 'dart:convert';

import '../../domain/entities/university.dart';

class UniversityModel extends University {
  const UniversityModel({
    required super.id,
    required super.name,
    super.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  factory UniversityModel.fromMap(Map<String, dynamic> map) {
    return UniversityModel(
      id: map['id'] as String,
      name: map['name'] as String,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UniversityModel.fromJson(String source) =>
      UniversityModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

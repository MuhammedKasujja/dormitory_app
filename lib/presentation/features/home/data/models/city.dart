import 'dart:convert';

import '../../domain/entities/city.dart';

class CityModel extends City {
  const CityModel({
    required super.id,
    required super.name,
    super.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'code': code,
    };
  }

  factory CityModel.fromMap(Map<String, dynamic> map) {
    return CityModel(
      id: map['id'] as String,
      name: map['name'] as String,
      code: map['code'] != null ? map['code'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CityModel.fromJson(String source) =>
      CityModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

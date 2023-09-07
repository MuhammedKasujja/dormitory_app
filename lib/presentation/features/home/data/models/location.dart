import 'dart:convert';

import '../../domain/entities/location.dart';
import 'city.dart';

class LocationModel extends Location {
  const LocationModel({
    required super.id,
    required super.address,
    required super.city,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'address': address,
      'city': (city as CityModel).toMap(),
    };
  }

  factory LocationModel.fromMap(Map<String, dynamic> map) {
    return LocationModel(
      id: map['id'],
      address: map['address'],
      city: CityModel.fromMap(map['city'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory LocationModel.fromJson(String source) =>
      LocationModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

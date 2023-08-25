import 'dart:convert';
import 'package:equatable/equatable.dart';

class UniversityModel extends Equatable {
  final String id;
  final String name;
  final String address;
  final String country;
  final String city;
  final String? attachmentFileUrl;
  const UniversityModel({
    required this.id,
    required this.name,
    required this.address,
    required this.country,
    required this.city,
    this.attachmentFileUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'address': address,
      'country': country,
      'city': city,
      'student_letter': attachmentFileUrl,
    };
  }

  factory UniversityModel.fromMap(Map<String, dynamic> map) {
    return UniversityModel(
      id: map['id'],
      name: map['name'],
      address: map['address'],
      country: map['country'],
      city: map['city'],
      attachmentFileUrl: map['student_letter'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UniversityModel.fromJson(String source) => UniversityModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      address,
      country,
      city,
      attachmentFileUrl,
    ];
  }
}

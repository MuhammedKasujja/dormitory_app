import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:dormitory_app/models/models.dart';

class UserModel extends Equatable {
  final String id;
  final String firstname;
  final String lastname;
  final String email;
  final String countryCode;
  final String telephone;
  final String? dateOfBirth;
  final String? gender;
  final UniversityModel? university;
  const UserModel({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.countryCode,
    required this.telephone,
    this.dateOfBirth,
    this.gender,
    this.university,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'countryCode': countryCode,
      'telephone': telephone,
      'dateOfBirth': dateOfBirth,
      'gender': gender,
      'university': university?.toMap(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      firstname: map['firstname'],
      lastname: map['lastname'],
      email: map['email'],
      countryCode: map['countryCode'],
      telephone: map['telephone'],
      dateOfBirth:map['dateOfBirth'],
      gender: map['gender'],
      university: map['university'] != null ? UniversityModel.fromMap(map['university'] as Map<String,dynamic>) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      firstname,
      lastname,
      email,
      countryCode,
      telephone,
      dateOfBirth,
      gender,
      university,
    ];
  }
}

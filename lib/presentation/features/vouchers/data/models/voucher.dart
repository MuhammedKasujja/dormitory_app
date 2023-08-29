import 'dart:convert';

import 'package:equatable/equatable.dart';

class VourcherModel extends Equatable {
  final String id;
  final int discount;
  final String code;
  final String startTime;
  final String endTime;
  final String type;
  final String subject;
  final String photoUrl;
  final bool status;
  final List<String> termsAndConditions;
  const VourcherModel({
    required this.id,
    required this.discount,
    required this.code,
    required this.startTime,
    required this.endTime,
    required this.type,
    required this.subject,
    required this.photoUrl,
    required this.status,
    this.termsAndConditions = const [],
  });

  VourcherModel copyWith({
    String? id,
    int? discount,
    String? code,
    String? startTime,
    String? endTime,
    String? type,
    String? subject,
    String? photoUrl,
  }) {
    return VourcherModel(
      id: id ?? this.id,
      discount: discount ?? this.discount,
      code: code ?? this.code,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      photoUrl: photoUrl ?? this.photoUrl,
      status: status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'discount': discount,
      'code': code,
      'startTime': startTime,
      'endTime': endTime,
      'type': type,
      'subject': subject,
      'status': status,
    };
  }

  factory VourcherModel.fromMap(Map<String, dynamic> map) {
    return VourcherModel(
      id: map['id'] as String,
      discount: map['discount'],
      code: map['code'] as String,
      startTime: map['startTime'] as String,
      endTime: map['endTime'] as String,
      type: map['type'] as String,
      subject: map['subject'] as String,
      photoUrl: map['photoUrl'],
      status: map['status'] == 1,
      termsAndConditions: map['terms_and_conditions'],
    );
  }

  String toJson() => json.encode(toMap());

  factory VourcherModel.fromJson(String source) =>
      VourcherModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      discount,
      code,
      startTime,
      endTime,
      type,
      subject,
      photoUrl,
    ];
  }
}

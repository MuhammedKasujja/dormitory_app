import 'dart:convert';

import '../../domain/entities/voucher_entity.dart';

class VourcherModel extends VoucherEntity {
  const VourcherModel({
    required super.id,
    required super.discount,
    required super.code,
    required super.startTime,
    required super.endTime,
    required super.type,
    required super.subject,
    required super.photoUrl,
    required super.status,
    required super.termsAndConditions,
    required super.dateAdded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'discount': discount,
      'code': code,
      'startTime': startTime,
      'endTime': endTime,
      'type': type,
      'subject': subject,
      'status': status.index,
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
      status: map['status'],
      termsAndConditions: map['terms_and_conditions'],
      dateAdded: map['dateAdded'],
    );
  }

  String toJson() => json.encode(toMap());

  factory VourcherModel.fromJson(String source) =>
      VourcherModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}

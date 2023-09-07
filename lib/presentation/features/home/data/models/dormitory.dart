import 'dart:convert';

import '../../domain/entities/entities.dart';
import 'dormitory_facility.dart';
import 'dormitory_stay_duration.dart';
import 'location.dart';
import 'payment_fees.dart';
import 'university.dart';

class DormitoryModel extends Dormitory {
  const DormitoryModel({
    required super.id,
    required super.name,
    required super.location,
    required super.defaultPhoto,
    required super.otherPhotos,
    required super.paymentType,
    required super.facilities,
    required super.university,
    required super.currentPay,
    super.previousPay,
    required super.stayDuration,
    required super.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'location': (location as LocationModel).toMap(),
      'defaultPhoto': defaultPhoto,
      'otherPhotos': otherPhotos,
      'paymentType': paymentType.index,
      'facilities':
          facilities.map((x) => (x as DormitoryFacilityModel).toMap()).toList(),
      'currentPay': (currentPay as PaymentFeeModel).toMap(),
      'previousPay':
          previousPay != null ? (previousPay as PaymentFeeModel).toMap() : null,
      'university': (university as UniversityModel).toMap(),
      'stayDuration': (stayDuration as DormitoryStayDurationModel).toMap(),
      'type': type.index,
    };
  }

  factory DormitoryModel.fromMap(Map<String, dynamic> map) {
    return DormitoryModel(
      id: map['id'] as String,
      name: map['name'] as String,
      location: LocationModel.fromMap(map['location'] as Map<String, dynamic>),
      defaultPhoto: map['defaultPhoto'] as String,
      otherPhotos: List<String>.from((map['otherPhotos'] as List<String>)),
      paymentType: PaymentPeriodType.values[map['paymentType']],
      facilities: List<DormitoryFacilityModel>.from(
        (map['facilities'] as List).map<DormitoryFacilityModel>(
          (x) => DormitoryFacilityModel.fromMap(x),
        ),
      ),
      currentPay:
          PaymentFeeModel.fromMap(map['currentPay'] as Map<String, dynamic>),
      previousPay: map['previousPay'] != null
          ? PaymentFeeModel.fromMap(map['previousPay'] as Map<String, dynamic>)
          : null,
      university:
          UniversityModel.fromMap(map['university'] as Map<String, dynamic>),
      stayDuration: DormitoryStayDurationModel.fromMap(
          map['stayDuration'] as Map<String, dynamic>),
      type: DormitoryType.values[map['type']],
    );
  }

  String toJson() => json.encode(toMap());

  factory DormitoryModel.fromJson(String source) =>
      DormitoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

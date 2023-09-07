import 'dart:convert';

import '../../domain/entities/dormitory_facility.dart';
import '../../domain/entities/enums.dart';

class DormitoryFacilityModel extends DormitoryFacility {
  const DormitoryFacilityModel({
    required super.id,
    required super.name,
    super.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type.index,
    };
  }

  factory DormitoryFacilityModel.fromMap(Map<String, dynamic> map) {
    return DormitoryFacilityModel(
      id: map['id'],
      name: map['name'],
      type: FacilityType.values[map['type']],
    );
  }

  String toJson() => json.encode(toMap());

  factory DormitoryFacilityModel.fromJson(String source) =>
      DormitoryFacilityModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}

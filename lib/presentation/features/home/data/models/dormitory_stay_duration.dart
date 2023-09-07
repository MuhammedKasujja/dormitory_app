import 'dart:convert';

import '../../domain/entities/dormitory_stay_duration.dart';
import '../../domain/entities/enums.dart';

class DormitoryStayDurationModel extends DormitoryStayDuration {
  const DormitoryStayDurationModel({
    required super.id,
    required super.durationName,
    required super.startTime,
    required super.endTime,
    super.stayDurationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'durationName': durationName,
      'startTime': startTime,
      'endTime': endTime,
      'stayDurationType': stayDurationType.index,
    };
  }

  factory DormitoryStayDurationModel.fromMap(Map<String, dynamic> map) {
    return DormitoryStayDurationModel(
      id: map['id'] as String,
      durationName: map['durationName'] as String,
      startTime: map['startTime'] as String,
      endTime: map['endTime'] as String,
      stayDurationType:
          DormitoryStayDurationType.values[map['stayDurationType']],
    );
  }

  String toJson() => json.encode(toMap());

  factory DormitoryStayDurationModel.fromJson(String source) =>
      DormitoryStayDurationModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}

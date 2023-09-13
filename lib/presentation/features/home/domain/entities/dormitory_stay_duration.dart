import 'package:equatable/equatable.dart';

import 'enums.dart';

class DormitoryStayDuration extends Equatable {
  final String id;
  final String durationName;
  final String startTime;
  final String endTime;
  final DormitoryStayDurationType stayDurationType;
  const DormitoryStayDuration({
    required this.id,
    required this.durationName,
    required this.startTime,
    required this.endTime,
    this.stayDurationType = DormitoryStayDurationType.weeks,
  });

  String get text =>
      "$durationName stay $startTime-$endTime ${stayDurationType.label}";

  @override
  List<Object> get props {
    return [
      id,
      durationName,
      startTime,
      endTime,
      stayDurationType,
    ];
  }
}

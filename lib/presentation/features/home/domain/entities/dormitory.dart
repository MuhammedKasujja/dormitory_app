import 'package:equatable/equatable.dart';

import 'dormitory_facility.dart';
import 'dormitory_stay_duration.dart';
import 'enums.dart';
import 'location.dart';
import 'payment_fees.dart';
import 'university.dart';

class Dormitory extends Equatable {
  final String id;
  final String name;
  final Location location;
  final String defaultPhoto;
  final List<String> otherPhotos;
  final PaymentPeriodType paymentType;
  final List<DormitoryFacility> facilities;
  final PaymentFee currentPay;
  final PaymentFee? previousPay;
  final University university;
  final DormitoryStayDuration stayDuration;
  final DormitoryType type;
  const Dormitory({
    required this.id,
    required this.name,
    required this.location,
    required this.defaultPhoto,
    required this.otherPhotos,
    required this.paymentType,
    required this.facilities,
    required this.university,
    required this.currentPay,
    this.previousPay,
    required this.stayDuration,
    required this.type,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      location,
      defaultPhoto,
      otherPhotos,
      paymentType,
      facilities,
      currentPay,
      previousPay,
      university,
      stayDuration,
      type,
    ];
  }
}

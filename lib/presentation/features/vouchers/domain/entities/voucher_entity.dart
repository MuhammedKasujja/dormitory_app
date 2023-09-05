import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

import '../../data/models/enums.dart';

class VoucherEntity extends Equatable {
  final String id;
  final int discount;
  final String code;
  final String startTime;
  final String endTime;
  final String type;
  final String subject;
  final String photoUrl;
  final VoucherStatus status;
  final List<String> termsAndConditions;
  final DateTime dateAdded;
  const VoucherEntity({
    required this.id,
    required this.discount,
    required this.code,
    required this.startTime,
    required this.endTime,
    required this.type,
    required this.subject,
    required this.photoUrl,
    required this.status,
    required this.termsAndConditions,
    required this.dateAdded,
  });

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
      status,
      termsAndConditions,
      dateAdded,
    ];
  }

  String get formatedDate => DateFormat('dd.MM.yyyy hh:mm a').format(dateAdded);

  VoucherEntity copyWith({
    String? id,
    int? discount,
    String? code,
    String? startTime,
    String? endTime,
    String? type,
    String? subject,
    String? photoUrl,
    VoucherStatus? status,
    List<String>? termsAndConditions,
    DateTime? dateAdded,
  }) {
    return VoucherEntity(
      id: id ?? this.id,
      discount: discount ?? this.discount,
      code: code ?? this.code,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      photoUrl: photoUrl ?? this.photoUrl,
      status: status ?? this.status,
      termsAndConditions: termsAndConditions ?? this.termsAndConditions,
      dateAdded: dateAdded ?? this.dateAdded,
    );
  }
}

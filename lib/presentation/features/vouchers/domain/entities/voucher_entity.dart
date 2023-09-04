// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class VoucherEntity extends Equatable {
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
    ];
  }

  VoucherEntity copyWith({
    String? id,
    int? discount,
    String? code,
    String? startTime,
    String? endTime,
    String? type,
    String? subject,
    String? photoUrl,
    bool? status,
    List<String>? termsAndConditions,
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
    );
  }
}

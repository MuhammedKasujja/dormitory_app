import 'package:equatable/equatable.dart';

import 'enums.dart';

class DormitoryFacility extends Equatable {
  final String id;
  final String name;
  final FacilityType type;
  const DormitoryFacility({
    required this.id,
    required this.name,
    this.type = FacilityType.paidFor,
  });

  @override
  List<Object> get props => [id, name, type];
}

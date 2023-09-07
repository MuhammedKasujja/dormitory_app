import 'package:equatable/equatable.dart';

import 'city.dart';

class Location extends Equatable {
  final String id;
  final String address;
  final City city;
  const Location({
    required this.id,
    required this.address,
    required this.city,
  });

  @override
  List<Object> get props => [id, address, city];
}

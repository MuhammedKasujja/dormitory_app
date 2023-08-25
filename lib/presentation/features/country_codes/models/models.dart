import 'package:country_calling_code_picker/picker.dart';
import 'package:equatable/equatable.dart';

class CountryModel extends Equatable implements Country {
  final String simCode;
  final String code;
  final String countryName;
  final String flagIcon;
  const CountryModel({
    required this.code,
    required this.countryName,
    required this.flagIcon,
    required this.simCode,
  });

  @override
  String get callingCode => simCode;

  @override
  String get countryCode => code;

  @override
  String get flag => flagIcon;

  @override
  String get name => countryName;

  @override
  List<Object?> get props => [
        simCode,
        code,
        flagIcon,
        countryName,
      ];
}

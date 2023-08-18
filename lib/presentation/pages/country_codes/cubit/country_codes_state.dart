part of 'country_codes_cubit.dart';

class CountryCodesState extends Equatable {
  const CountryCodesState({this.countries = const [], this.selectedCountry});

  final List<Country> countries;

  final Country? selectedCountry;

  @override
  List<Object?> get props => [countries, selectedCountry];

  CountryCodesState copyWith({
    List<Country>? countries,
    Country? selectedCountry,
  }) {
    return CountryCodesState(
      countries: countries ?? this.countries,
      selectedCountry: selectedCountry ?? this.selectedCountry,
    );
  }
}

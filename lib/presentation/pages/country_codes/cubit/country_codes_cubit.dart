import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

part 'country_codes_state.dart';

class CountryCodesCubit extends Cubit<CountryCodesState> {
  CountryCodesCubit() : super(const CountryCodesState());

  void initCountry(BuildContext context) async {
    final selectedCountry = await getDefaultCountry(context);
    emit(state.copyWith(selectedCountry: selectedCountry));
  }

  void getCountryList(BuildContext context) async {
    if (state.countries.isNotEmpty) return;

    List<Country> countries = await getCountries(context);
    emit(state.copyWith(countries: countries));
  }

  void onCountrySelected(String? countryCode) async {
    if (countryCode == null) return;
    var countries = [...state.countries];
    final selectedCountry = countries
        .firstWhereOrNull((element) => element.countryCode == countryCode);

    emit(state.copyWith(selectedCountry: selectedCountry));
  }
}

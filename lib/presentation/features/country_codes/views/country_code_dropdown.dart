import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/country_codes_cubit.dart';

class CountryCodesDropdown extends StatefulWidget {
  const CountryCodesDropdown({super.key});

  @override
  State<CountryCodesDropdown> createState() => _CountryCodesDropdownState();
}

class _CountryCodesDropdownState extends State<CountryCodesDropdown> {
  @override
  void initState() {
    super.initState();
    context.read<CountryCodesCubit>().getCountryList(context);
    context.read<CountryCodesCubit>().initCountry(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 94,
      decoration: BoxDecoration(
        color: AppColors.backgroundLight,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.divider),
      ),
      child: BlocBuilder<CountryCodesCubit, CountryCodesState>(
        builder: (context, state) {
          if (state.selectedCountry == null) {
            return const SizedBox.shrink();
          }
          return Center(
            child: DropdownButton<String>(
              underline: const SizedBox.shrink(),
              value: state.selectedCountry!.countryCode,
              icon: const SizedBox.shrink(),
              items: state.countries.map((country) {
                return DropdownMenuItem(
                  value: country.countryCode,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 18.w,
                        height: 12.h,
                        child: Image.asset(
                          country.flag,
                          package: 'country_calling_code_picker',
                          width: 20,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        country.callingCode,
                        style: TextStyle(
                          color: AppColors.text2,
                          fontSize: 14.sp,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (country) =>
                  context.read<CountryCodesCubit>().onCountrySelected(country),
            ),
          );
        },
      ),
    );
  }
}

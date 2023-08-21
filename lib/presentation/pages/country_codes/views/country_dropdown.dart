import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/country_codes_cubit.dart';

class CountryDropdown extends StatefulWidget {
  const CountryDropdown({super.key});

  @override
  State<CountryDropdown> createState() => _CountryDropdownState();
}

class _CountryDropdownState extends State<CountryDropdown> {
  @override
  void initState() {
    super.initState();
    context.read<CountryCodesCubit>().initCountry(context);
    context.read<CountryCodesCubit>().getCountryList(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryCodesCubit, CountryCodesState>(
      builder: (context, state) {
        if (state.selectedCountry == null) {
          return const SizedBox.shrink();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Country').label(),
            const SizedBox().scaleHeight(8),
            Container(
              height: 48.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.backgroundLight,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: AppColors.divider),
              ),
              child: DropdownButton<String>(
                underline: const SizedBox.shrink(),
                value: state.selectedCountry!.countryCode,
                // icon: const SizedBox.shrink(),
                items: state.countries.map((country) {
                  return DropdownMenuItem(
                    value: country.countryCode,
                    child: Padding(
                      padding:  EdgeInsets.all(8.r),
                      child: Text(
                        country.name,
                        style: TextStyle(
                          color: AppColors.text2,
                          fontSize: 14.sp,
                          height: 1.5,
                        ),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (country) =>
                    context.read<CountryCodesCubit>().onCountrySelected(country),
              ),
            ),
          ],
        );
      },
    );
  }
}

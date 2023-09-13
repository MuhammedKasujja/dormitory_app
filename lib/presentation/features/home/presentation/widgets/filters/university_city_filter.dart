import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/blocs.dart';
import '../nearby_university.dart';
import '../popular_city.dart';

class UniversityAndCityFilter extends StatelessWidget {
  const UniversityAndCityFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      title: 'Popular Cities',
      hasClose: false,
      content: AdvancedAppTabs(
        tabs: const ['Cities', 'Univercities'],
        views: [
          BlocBuilder<CityBloc, CityState>(
            builder: (context, state) {
              if (state.data != null) {
                return ListView.separated(
                  shrinkWrap: true,
                  itemCount: state.data!.length,
                  itemBuilder: (context, index) {
                    return PopularCity(city: state.data![index]);
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: 16.r),
                );
              }
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColors.divider),
                ),
                child: const Text(''),
              );
            },
          ),
          BlocBuilder<UniversityBloc, UniversityState>(
            builder: (context, state) {
              if (state.data != null) {
                return ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: state.data!.length,
                  itemBuilder: (context, index) {
                    return NearbyUniversity(
                      university: state.data![index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: 16.r),
                );
              }
              return Container(
                height: 40.h,
                width: 80.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColors.divider),
                ),
                child: const Text(''),
              );
            },
          ),
        ],
      ),
    );
  }
}

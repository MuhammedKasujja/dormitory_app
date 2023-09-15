import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:dormitory_app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'filter_item.dart';
import 'filters/date_filter.dart';
import 'filters/filters.dart';

class DormitoryFilterWidget extends StatelessWidget {
  const DormitoryFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: AppColors.divider)),
      child: Column(
        children: [
          FilterItem(
            hint: 'Select City/University',
            icon: Icons.location_on_outlined,
            onPressed: () {
              Utility.showAppBottomSheet(
                context: context,
                isScrollable: true,
                child: const UniversityAndCityFilter(),
              );
            },
          ),
          const Spacing(12),
          Row(
            children: [
              Flexible(
                child: FilterItem(
                  hint: 'Move In',
                  icon: Icons.calendar_today_rounded,
                  onPressed: () {
                    Utility.showAppBottomSheet(
                      context: context,
                      child: const DateMoveInFilter(),
                    );
                  },
                ),
              ),
              SizedBox(width: 10.w),
              Flexible(
                child: FilterItem(
                  hint: 'Duration',
                  icon: Icons.access_time,
                  onPressed: () {
                    Utility.showAppBottomSheet(
                      context: context,
                      child: const DurationFilter(),
                    );
                  },
                ),
              ),
            ],
          ),
          const Spacing(12),
          FilterItem(
            hint: 'Dormitory Type',
            icon: Icons.business,
            onPressed: () {
              Utility.showAppBottomSheet(
                context: context,
                child: const DormitoryTypeFilter(),
              );
            },
          ),
          const Spacing(12),
          CustomButton(
            onPressed: () =>Navigator.pushNamed(context, Routes.dormitorySearchResults),
            label: 'Search',
            isElevated: false,
          )
        ],
      ),
    );
  }
}

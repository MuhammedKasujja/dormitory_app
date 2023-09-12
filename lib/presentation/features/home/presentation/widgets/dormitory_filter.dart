import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'filter_item.dart';

class DormitoryFilterWidget extends StatelessWidget {
  const DormitoryFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
       decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: AppColors.divider)
        ),
      child:  Column(
        children: [
          const FilterItem(
            hint: 'Select City/University',
            icon: Icons.location_on_outlined,
          ),
          const Spacing(12),
          Row(
            children: [
              const Flexible(
                child: FilterItem(
                  hint: 'Move In',
                  icon: Icons.calendar_today_rounded,
                ),
              ),
              SizedBox(width: 10.w),
              const Flexible(
                child: FilterItem(
                  hint: 'Duration',
                  icon: Icons.access_time,
                ),
              ),
            ],
          ),
          const Spacing(12),
          const FilterItem(
            hint: 'Dormitory Type',
            icon: Icons.business,
          ),
          const Spacing(12),
          CustomButton(onPressed: (){}, label: 'Search',isElevated: false,)
        ],
      ),
    );
  }
}

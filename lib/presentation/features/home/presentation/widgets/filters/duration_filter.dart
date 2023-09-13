import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/entities.dart';
import 'duration_stay_item.dart';

class DurationFilter extends StatelessWidget {
  const DurationFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      title: 'Duration',
      hasClose: false,
      content: Column(
        children: [
          const DurationStayItem(
            stayDuration: DormitoryStayDuration(
              id: '100',
              durationName: 'Summary/Short',
              startTime: '8',
              endTime: '12',
            ),
          ),
          Spacing.medium(),
          const DurationStayItem(
            stayDuration: DormitoryStayDuration(
              id: '200',
              durationName: 'Semester',
              startTime: '12',
              endTime: '24',
            ),
          ),
          Spacing.medium(),
          const DurationStayItem(
            stayDuration: DormitoryStayDuration(
              id: '300',
              durationName: 'Full year',
              startTime: '36',
              endTime: '44',
            ),
          ),
          Spacing.medium(),
          const DurationStayItem(
            stayDuration: DormitoryStayDuration(
              id: '400',
              durationName: 'Complete education',
              startTime: '50',
              endTime: '52',
            ),
          ),
          Spacing.medium(),
        ],
      ),
    );
  }
}

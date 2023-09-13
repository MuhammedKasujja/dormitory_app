import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/enums.dart';
import 'dormitory_type_item.dart';

class DormitoryTypeFilter extends StatelessWidget {
  const DormitoryTypeFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      title: 'Dormitory Type',
      hasClose: false,
      content: Column(
        children: [
          const DormitoryTypeFilterItem(dormitoryType: DormitoryType.all),
          Spacing.medium(),
          const DormitoryTypeFilterItem(dormitoryType: DormitoryType.male),
          Spacing.medium(),
          const DormitoryTypeFilterItem(dormitoryType: DormitoryType.female),
          Spacing.medium(),
        ],
      ),
    );
  }
}

import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../data/models/models.dart';
import 'filter_voucher_item.dart';

class VoucherFilterMenu extends StatelessWidget {
  const VoucherFilterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseBottomSheet(
      title: 'Sort by',
      content: Column(
        children: [
          FilterVoucherItem(
            label: 'Latest(Default)',
            filterType: VoucherFilterType.latest,
          ),
          FilterVoucherItem(
            label: 'Latest Voucher time first',
            filterType: VoucherFilterType.oldest,
          ),
          FilterVoucherItem(
            label: 'Lowest Voucher value first',
            filterType: VoucherFilterType.lowestValue,
          ),
          FilterVoucherItem(
            label: 'Highest Voucher value first',
            filterType: VoucherFilterType.highestValue,
          )
        ],
      ),
    );
  }
}

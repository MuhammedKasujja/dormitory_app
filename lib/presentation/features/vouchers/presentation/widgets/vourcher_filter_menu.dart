import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

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
            value: 'latest',
          ),
          FilterVoucherItem(
            label: 'Latest Voucher time first',
            value: 'first',
          ),
          FilterVoucherItem(
            label: 'Lowest Voucher value first',
            value: 'lowest',
          ),
          FilterVoucherItem(
            label: 'Highest Voucher value first',
            value: 'highest',
          )
        ],
      ),
    );
  }
}

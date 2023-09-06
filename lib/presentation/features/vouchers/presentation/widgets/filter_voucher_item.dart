import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/enums.dart';
import '../blocs/vouchers/vouchers_bloc.dart';

class FilterVoucherItem extends StatelessWidget {
  final String label;
  final VoucherFilterType filterType;
  const FilterVoucherItem(
      {super.key, required this.label, required this.filterType});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<VouchersBloc>().add(ChangedSortOrder(filterType));
      },
      child: Container(
        padding: EdgeInsets.all(16.r),
        child: Row(
          children: [
            BlocBuilder<VouchersBloc, VouchersState>(
              builder: (context, state) {
                return Icon(
                  state.filterType == filterType
                      ? Icons.radio_button_checked
                      : Icons.radio_button_unchecked,
                  color: state.filterType == filterType
                      ? AppColors.text500
                      : AppColors.text100,
                );
              },
            ),
            SizedBox(
              width: 24.w,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.text1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

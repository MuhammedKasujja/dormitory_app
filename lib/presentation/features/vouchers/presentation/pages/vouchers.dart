import 'package:dormitory_app/core/core.dart';
import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/auth/auth.dart';
import 'package:dormitory_app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../blocs/blocs.dart';
import '../widgets/widgets.dart';

class VourchersPage extends StatelessWidget {
  const VourchersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('My Vouchers'),
        actions: [
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return state.status.isAuthenticated
                  ? IconButton(
                      onPressed: () => _showFilterVourcherMenu(context),
                      icon: const Icon(Icons.filter_list),
                    )
                  : const SizedBox.shrink();
            },
          )
        ],
      ),
      body: ListDataPage(
        guestIcon: SvgPicture.asset(Assets.missingVoucher),
        guestTitleHeader: 'No Vouchers',
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<VouchersBloc, VouchersState>(
                builder: (context, state) {
                  if (state.data != null) {
                    return ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.all(16.r),
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.data!.length,
                      itemBuilder: (context, index) => VourcherCard(
                        vourcher: state.data![index],
                      ),
                      separatorBuilder: (BuildContext context, int index) =>
                          Spacing.medium(),
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                onPressed: () => _showAddVourcher(context),
                label: 'Add Voucher Code',
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showAddVourcher(BuildContext context) {
    return Utility.showAppBottomSheet(
      context: context,
      child: const AddVourcherCodeModal(),
    );
  }

  _showFilterVourcherMenu(BuildContext context) {
    return Utility.showAppBottomSheet(
      context: context,
      child: const VoucherFilterMenu(),
    );
  }
}

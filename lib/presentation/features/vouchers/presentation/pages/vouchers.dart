import 'package:dormitory_app/di_container.dart';
import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repositories/vourcher_repository.dart';
import '../bloc/vouchers_bloc.dart';
import '../widgets/widgets.dart';

class VourchersPage extends StatelessWidget {
  const VourchersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Vouchers'),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.filter_list),
          )
        ],
      ),
      body: BlocProvider(
        create: (context) => VouchersBloc(sl<VourcherRepository>())
          ..add(const FetchMyVourchers()),
        child: Column(
          children: [
            // CustomPaint(
            //   size: Size(double.infinity, 150),
            //   painter: CardClipper(),
            // ),
            Expanded(
              child: BlocBuilder<VouchersBloc, VouchersState>(
                builder: (context, state) {
                  return ListView.builder(
                    itemCount: state.data.length,
                    itemBuilder: (context, index) =>
                        VourcherCard(vourcher: state.data[index]),
                  );
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
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.r),
        ),
      ),
      builder: (context) {
        return const AddVourcherCodeModal();
      },
    );
  }
}

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
            onPressed: () => _showFilterVourcherMenu(context),
            icon: const Icon(Icons.filter_list),
          )
        ],
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: ClipPath(
      //     clipper: VoucherClipper(),
      //     child: Container(
      //       height: 200,
      //       width: double.infinity,
      //       decoration: BoxDecoration(
      //         color: Colors.green,
      //         border: Border.all(color: AppColors.primary),
      //         // color: Colors.red,
      //       ),
      //     ),
      //   ),
      // ),
      body: BlocProvider(
        create: (context) =>
            VouchersBloc(vourcherRepository: sl<VourcherRepository>())
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
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 1.0,
                              blurRadius: 10.0,
                              offset: const Offset(3.0, 3.0),
                            )
                          ],
                        ),
                        child: CustomPaint(
                          // size: Size(397, 126),
                          // painter: RPSCustomPainter(),

                          // responsive painter
                          size: Size(
                            MediaQuery.sizeOf(context).width,
                            (MediaQuery.sizeOf(context).width *
                                    0.31738035264483627)
                                .toDouble(),
                          ),
                          painter: RPSCustomPainterResponsive(),
                        ),
                      ),
                    ),
                    //VourcherCard(vourcher: state.data[index]),
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

  _showFilterVourcherMenu(BuildContext context) {
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
        return const VoucherFilterMenu();
      },
    );
  }
}

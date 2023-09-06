import 'package:dormitory_app/core/core.dart';
import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/payment_methods_bloc.dart';
import '../widgets/payment_card_item.dart';

class PaymentMethodsPage extends StatelessWidget {
  const PaymentMethodsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Methods'),
      ),
      body: ListDataWidget(
        guestIcon: Image.asset(Assets.card),
        guestTitleHeader: 'No Saved Payment Method',
        child: BlocProvider(
          create: (context) =>
              PaymentMethodsBloc()..add(const PaymentMethodsFetchCards()),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<PaymentMethodsBloc, PaymentMethodsState>(
                  builder: (context, state) {
                    if (state.state == AppState.success) {
                      if (state.cards.isEmpty) {
                        return const Center(
                          child: Text('No Saved Payment Method'),
                        );
                      }
                      return ListView.builder(
                        itemCount: state.cards.length,
                        itemBuilder: (context, index) =>
                            PaymentCardItem(cardModel: state.cards[index]),
                      );
                    }
                    return const CircularProgressIndicator();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.r),
                child: CustomButton(
                  label: 'Add Payment Method',
                  onPressed: () =>
                      Navigator.pushNamed(context, Routes.addPaymentMethods),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

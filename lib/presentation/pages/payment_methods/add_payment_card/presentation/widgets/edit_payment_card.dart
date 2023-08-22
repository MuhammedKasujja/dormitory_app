import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/add_payment_card_cubit.dart';
import 'form_add_edit_payment_card.dart';

class EditPaymentcard extends StatelessWidget {
  const EditPaymentcard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddPaymentCardCubit(),
      child: Padding(
        padding: EdgeInsets.only(top: 5.r, bottom: 16.r),
        child: Wrap(
          children: [
            Center(
              child: Container(
                height: 5.h,
                width: 36.w,
                decoration: BoxDecoration(
                  color: AppColors.divider,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.r, 19.r, 16.r, 16.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Edit Card',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.text1,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1, height: 1),
            Padding(
              padding:  EdgeInsets.fromLTRB(16.r,16.r,16.r, 0),
              child: const AddEditPaymentCardForm(),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(16.r, 40.r, 16.r, 0),
              child: CustomButton(
                onPressed: () {},
                label: 'Save',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

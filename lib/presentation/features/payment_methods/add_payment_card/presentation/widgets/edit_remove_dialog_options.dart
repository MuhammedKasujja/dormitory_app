import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'edit_payment_card.dart';
import 'remove_payment_card.dart';

class EditRemoveCardOptionsDialog extends StatelessWidget {
  const EditRemoveCardOptionsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  '',
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
          const SizedBox().scaleHeight(12),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:16.r),
            child: CustomButton(
              onPressed: () {
                Navigator.pop(context);
                _showBottomSheet(context, type: 'edit');
              },
              label: 'Edit Card',
            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(16.r, 12.r, 16.r, 0),
            child: SecondaryButton(
              onPressed: () {
                Navigator.pop(context);
                _showBottomSheet(context, type: 'remove');
              },
              label: 'Remove',
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showBottomSheet(BuildContext context, {required String type}) {
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
        return type == 'edit'
            ? const EditPaymentcard()
            : const RemovePaymentCardDialog();
      },
    );
  }
}

import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AddVourcherCodeModal extends StatelessWidget {
  const AddVourcherCodeModal({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      title: 'Add Voucher Code',
      content: Column(
        children: [
          CustomTextfield(
            label: '',
            onChange: (value) => {},
            hint: 'Enter Voucher Code',
          ),
          Spacing.large(),
          CustomButton(
            label: 'Add',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

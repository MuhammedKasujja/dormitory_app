import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomCheckbox extends StatefulWidget {
  final Widget child;
  const CustomCheckbox({super.key, required this.child});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool? termsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return 
    Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: AppColors.divider, 
        splashColor: Colors.transparent
      ),
      child:
       FormBuilderCheckbox(
        
        activeColor: AppColors.divider,
        checkColor: AppColors.primary,
        name: 'accept_terms',
        initialValue: termsAccepted,
        onChanged: (value) {
          setState(() {
            termsAccepted = value;
          });
        },
        decoration: const InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none
        ),
        title: widget.child,
        validator: FormBuilderValidators.equal(
          true,
          errorText: 'You must accept terms and conditions to continue',
        ),
      ),
    );
  }
}

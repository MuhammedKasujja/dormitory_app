import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String label;
  final TextInputType inputType;
  final bool isRequired;
  final String? errorText;
  final bool disabled;
  const CustomTextfield({
    Key? key,
    required this.controller,
    this.hint = '',
    required this.label,
    this.inputType = TextInputType.text,
    this.isRequired = true,
    this.errorText,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: AppColors.text2,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        FormBuilderTextField(
          name: label,
          textInputAction: TextInputAction.next,
          controller: controller,
          keyboardType: inputType,
          readOnly: disabled,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: inputType == TextInputType.emailAddress
              ? FormBuilderValidators.compose([
                  FormBuilderValidators.email(),
                  FormBuilderValidators.required(),
                ])
              : !isRequired
                  ? FormBuilderValidators.compose([])
                  : FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        errorText: errorText,
                      ),
                    ]),
          style: TextStyle(
            fontSize: 16.0,
            color: Theme.of(context).colorScheme.secondary,
          ),
          decoration: InputDecoration(
            isDense: true,
            hintText: hint,
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 16.sp,
            ),
            fillColor: AppColors.backgroundLight,
            filled: true,
            focusedBorder:
                AppStyles.buildInputBorder(state: InputState.focused),
            errorBorder: AppStyles.buildInputBorder(state: InputState.error),
            border: AppStyles.buildInputBorder(),
            enabledBorder: AppStyles.buildInputBorder(),
          ),
        ),
      ],
    );
  }
}

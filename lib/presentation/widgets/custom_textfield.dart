import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/extensions/extensions.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final Function(String value) onChange;
  final String? hint;
  final String label;
  final TextInputType inputType;
  final bool isRequired;
  final String? errorText;
  final bool disabled;
  const CustomTextfield({
    Key? key,
    required this.onChange,
    this.hint,
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
        Text(label).label(hasError: errorText!= null),
        SizedBox(
          height: 8.h,
        ),
        TextField(
          key: Key(label),
          textInputAction: TextInputAction.next,
          onChanged: onChange,
          keyboardType: inputType,
          maxLines: inputType == TextInputType.multiline ? 5 : 1,
          readOnly: disabled,
          style: TextStyle(
            fontSize: 14.0,
            color: Theme.of(context).colorScheme.secondary,
          ),
          decoration: InputDecoration(
            // isDense: true,
            // remove un neccessary padding using negative value
            contentPadding: const EdgeInsets.symmetric(
              vertical: -10,
              horizontal: 10,
            ),
            hintText: hint,
            errorText: errorText,
            hintStyle: TextStyle(
              color: AppColors.text3,
              fontSize: 14.sp,
            ),
            fillColor: AppColors.backgroundLight,
            filled: true,
            errorStyle: TextStyle(color: Colors.red, fontSize: 16.sp),
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

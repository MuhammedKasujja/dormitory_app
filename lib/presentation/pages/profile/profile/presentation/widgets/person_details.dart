import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Personal Details').title(fontSize: 16, lineHeight: 1.25),
        const SizedBox().small(),
        CustomTextfield(onChange: (value) {}, label: 'First name'),
        const SizedBox().small(),
        CustomTextfield(onChange: (value) {}, label: 'Last name'),
        const SizedBox().small(),
        CustomTextfield(onChange: (value) {}, label: 'Email address'),
        const SizedBox().small(),
        CustomTextfield(onChange: (value) {}, label: 'Phone Number'),
      ],
    );
  }
}

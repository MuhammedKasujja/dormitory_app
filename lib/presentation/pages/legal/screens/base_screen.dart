import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'components/components.dart';

class BaseLegalScreen extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const BaseLegalScreen({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(color: AppColors.text1),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 24.sp,
            horizontal: 16.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LanguageDropdown(),
              const SizedBox().small(),
              const DateLastModified(),
              const SizedBox().small(),
              const Divider(
                thickness: 1,
                height: 1,
              ),
              ...children
            ],
          ),
        ),
      ),
    );
  }
}

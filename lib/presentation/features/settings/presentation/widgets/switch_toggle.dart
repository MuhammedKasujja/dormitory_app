import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchToggle extends StatelessWidget {
  final bool isActive;
  final Function(bool isActive) onToggle;
  const SwitchToggle({
    super.key,
    required this.isActive,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) { 
    return FlutterSwitch(
      width: 51.w,
      height: 31.h,
      value: isActive,
      inactiveColor: const Color(0xFFE6E6E6),
      activeColor: AppColors.success,
      inactiveToggleColor: Colors.white70,
      padding: 2,
      onToggle: onToggle,
    );
  }
}

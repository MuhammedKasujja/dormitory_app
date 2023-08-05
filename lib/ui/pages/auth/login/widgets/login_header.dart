import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatefulWidget {
  final Function(int selectedIndex) onToggle;
  const LoginHeader({super.key, required this.onToggle});

  @override
  State<LoginHeader> createState() => _LoginHeaderState();
}

class _LoginHeaderState extends State<LoginHeader> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 38.h,
        padding: EdgeInsets.all(2.r),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                child: TabItem(
              label: 'Login',
              index: 0,
              selectedIndex: selectedIndex,
              onToggle: (index) {
                setState(() {
                  selectedIndex = index;
                });
                widget.onToggle(index);
              },
            )),
            Expanded(
              child: TabItem(
                label: 'Sign Up',
                index: 1,
                selectedIndex: selectedIndex,
                onToggle: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                  widget.onToggle(index);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final Function(int selectedIndex) onToggle;
  final int index;
  final int selectedIndex;
  final String label;
  const TabItem({
    super.key,
    required this.index,
    required this.onToggle,
    required this.selectedIndex,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 160,
      height: 38.h,
      onPressed: () => onToggle(index),
      color: selectedIndex == index ? Colors.white : null,
      textColor: selectedIndex == index ? Colors.black : AppColors.textHint,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14.sp,
        ),
      ),
    );
  }
}

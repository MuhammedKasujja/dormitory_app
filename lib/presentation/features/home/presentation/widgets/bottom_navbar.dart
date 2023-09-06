import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'navbar_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.activeIndex,
    required this.onTap,
  });
  final int activeIndex;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: _ButtomNavbar(
        activeIndex: activeIndex,
        onSelectedItem: onTap,
      ),
    );
  }
}

class _ButtomNavbar extends StatelessWidget {
  const _ButtomNavbar({
    required this.activeIndex,
    required this.onSelectedItem,
  });
  final int activeIndex;
  final void Function(int index) onSelectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavbarItem(
            label: 'Home',
            iconPath: homeActiveIcon,
            isActive: activeIndex == 0,
            iconIndex: 0,
            onSelected: onSelectedItem,
          ),
          NavbarItem(
            label: 'Filters',
            iconPath: filterActiveIcon,
            isActive: activeIndex == 1,
            iconIndex: 1,
            onSelected: onSelectedItem,
          ),
          NavbarItem(
            label: 'Saved',
            iconPath: savedActiveIcon,
            isActive: activeIndex == 2,
            iconIndex: 2,
            onSelected: onSelectedItem,
          ),
          NavbarItem(
            label: 'Chat',
            iconPath: chatActiveIcon,
            isActive: activeIndex == 3,
            iconIndex: 3,
            onSelected: onSelectedItem,
          ),
        ],
      ),
    );
  }
}

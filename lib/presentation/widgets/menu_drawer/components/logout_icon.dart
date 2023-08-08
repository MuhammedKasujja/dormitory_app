import 'package:dormitory_app/presentation/router/router.dart';
import 'package:flutter/material.dart';

import 'drawer_item.dart';

class LogoutIcon extends StatelessWidget {
  const LogoutIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const DrawerItem(
      isLogout: true,
      icon: Icons.logout,
      title: 'Logout',
      route: Routes.login,
    );
  }
}
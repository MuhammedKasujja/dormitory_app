import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'components/components.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const ProfileHeader(),
                  const SizedBox().medium(),
                  const DrawerItem(
                    title: 'Profile',
                    icon: Icons.account_circle,
                    route: Routes.chatting,
                  ),
                  const DrawerItem(title: 'Booking Activity', icon: Icons.timer),
                  const DrawerItem(title: 'My Vouchers', icon: Icons.calendar_view_day),
                  const SizedBox().medium(),
                  const Divider(),
                  const SizedBox().medium(),
                  const DrawerItem(title: 'Saved Dorms', icon: Icons.bookmark),
                  const DrawerItem(title: 'Favourite Search', icon: Icons.star_outlined),
                  const DrawerItem(title: 'Payment Methods', icon: Icons.wallet),
                  const SizedBox().medium(),
                  const Divider(),
                  const SizedBox().medium(),
                  const DrawerItem(title: 'Help and Support', icon: Icons.help),
                  const DrawerItem(
                    title: 'Settings',
                    icon: Icons.settings,
                    route: Routes.settings,
                  ),
                  const DrawerItem(
                    title: 'Legal',
                    icon: Icons.person,
                    route: Routes.legal,
                  ),
                  const SizedBox().medium(),
                  const Divider(),
                  const SizedBox().medium(),
                ],
              ),
            ),
          ),
          const LogoutIcon(),
          const SizedBox().medium(),
        ],
      ),
    );
  }
}

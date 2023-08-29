import 'package:dormitory_app/presentation/features/auth/auth.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/components.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

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
                  Spacing.medium(),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return state.status.isAuthenticated
                          ? const DrawerItem(
                              title: 'Profile',
                              icon: Icons.account_circle,
                              route: Routes.profile,
                            )
                          : const SizedBox.shrink();
                    },
                  ),
                  const DrawerItem(
                      title: 'Booking Activity', icon: Icons.timer),
                  const DrawerItem(
                    title: 'My Vouchers',
                    icon: Icons.calendar_view_day,
                    route: Routes.vourchers,
                  ),
                  Spacing.medium(),
                  const Divider(height: 0.8),
                  Spacing.medium(),
                  const DrawerItem(title: 'Saved Dorms', icon: Icons.bookmark),
                  const DrawerItem(
                      title: 'Favourite Search', icon: Icons.star_outlined),
                  const DrawerItem(
                    title: 'Payment Methods',
                    icon: Icons.wallet,
                    route: Routes.paymentMethods,
                  ),
                  Spacing.medium(),
                  const Divider(height: 0.8),
                  Spacing.medium(),
                  const DrawerItem(
                    title: 'Help and Support',
                    icon: Icons.help,
                    route: Routes.helpAndSupport,
                  ),
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
                  Spacing.medium(),
                  const Divider(height: 0.8),
                  Spacing.medium(),
                ],
              ),
            ),
          ),
          const LogoutIcon(),
        ],
      ),
    );
  }
}

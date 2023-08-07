import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

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
          SingleChildScrollView(
            child: Column(
              children: [
                const _ProfileHeader(),
                const SizedBox().medium(),
                const _DrawerItem(title: 'Profile', icon: Icons.account_circle),
                const _DrawerItem(
                    title: 'Booking Activity', icon: Icons.timer),
                const SizedBox().medium(),
                const Divider(),
                const SizedBox().medium(),
                const _DrawerItem(title: 'Saved Dorms', icon: Icons.bookmark),
                const _DrawerItem(title: 'Payment Methods', icon: Icons.wallet),
                const SizedBox().medium(),
                const Divider(),
                const SizedBox().medium(),
                const _DrawerItem(title: 'Help and Support', icon: Icons.help),
                const _DrawerItem(title: 'Settings', icon: Icons.settings),
                const _DrawerItem(title: 'Legal', icon: Icons.person),
                const SizedBox().medium(),
                const Divider(),
                const SizedBox().medium(),
              ],
            ),
          ),
          const Spacer(),
          const _LogoutIcon(),
          const SizedBox().medium(),
        ],
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String? route;
  final bool isLogout;
  const _DrawerItem({
    required this.title,
    required this.icon,
    this.route,
    this.isLogout = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (route != null) {
          Navigator.pushNamed(context, route!);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.r, horizontal: 32.r),
        child: Row(
          children: [
            Icon(
              icon,
              color: isLogout ? Colors.red : AppColors.textHint,
            ),
            SizedBox(
              width: 16.w,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 14.sp,
                color: isLogout ? Colors.red : AppColors.text1,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _LogoutIcon extends StatelessWidget {
  const _LogoutIcon();

  @override
  Widget build(BuildContext context) {
    return const _DrawerItem(
      isLogout: true,
      icon: Icons.logout,
      title: 'Logout',
      route: Routes.login,
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(32.r, (kToolbarHeight + 24).r, 16.r, 40.r),
      height: 250.h,
      color: Colors.black,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50.r),
            child: SizedBox(
              width: 64.w,
              height: 64.r,
              child: ImageLoader(
                imageUrl:
                    'https://static.vecteezy.com/system/resources/thumbnails/019/900/322/small/happy-young-cute-illustration-face-profile-png.png',
                placeholderImage: Assets.logo,
              ),
            ),
          ),
          const SizedBox().small(),
          Text(
            'Victor Emokpare',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Text(
            'victoremokpare@example.com',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFFC3C6D2),
            ),
          ),
        ],
      ),
    );
  }
}

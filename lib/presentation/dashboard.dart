import 'package:dormitory_app/presentation/features/chat/chat.dart';
import 'package:dormitory_app/presentation/features/home/home.dart';
import 'package:flutter/material.dart';

import 'features/home/presentation/widgets/bottom_navbar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const MenuDrawer(),
      // appBar: currentIndex == 0
      //     ? AppBar(
      //         actions: const [NotificationIcon()],
      //       )
      //     : PreferredSize(
      //         preferredSize: Size(double.infinity, 10.h),
      //         child: const SizedBox(
      //           height: kToolbarHeight,
      //           width: double.infinity,
      //         ),
      //       ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        activeIndex: currentIndex,
      ),
      body: currentIndex == 0 ? const HomePage() : const ChatPage(),
    );
  }
}

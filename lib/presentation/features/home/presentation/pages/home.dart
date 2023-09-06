import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/chat/chat.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: currentIndex == 0
          ? AppBar(
              actions: const [NotificationIcon()],
            )
          : PreferredSize(
              preferredSize: Size(double.infinity, 10.h),
              child: const SizedBox(
                height: kToolbarHeight,
                width: double.infinity,
              ),
            ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        activeIndex: currentIndex,
      ),
      body: currentIndex == 0 ? const Scaffold() : const ChatPage(),
    );
  }
}

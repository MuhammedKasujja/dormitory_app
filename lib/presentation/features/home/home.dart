import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/chat/chat.dart';
import 'package:dormitory_app/presentation/features/vouchers/vouchers.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              actions: [
                IconButton(
                  onPressed: () async {
                    context
                        .read<VouchersBloc>()
                        .add(const FetchSingleVourcher('VW882SQ0'));
                    Navigator.pushNamed(context, Routes.redeemVourcher);
                  },
                  icon: const Icon(
                    Icons.notifications_active,
                  ),
                )
              ],
            )
          : PreferredSize(
              preferredSize: Size(double.infinity, 10.h),
              child: const SizedBox(
                height: kToolbarHeight,
                width: double.infinity,
              ),
            ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter, color: Colors.black),
            label: 'Filter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color: Colors.black),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.black),
            label: 'Chats',
          ),
        ],
      ),
      body: currentIndex == 0 ? const Scaffold() : const ChatPage(),
    );
  }
}

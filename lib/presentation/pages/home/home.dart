import 'package:dormitory_app/presentation/pages/chat/chat.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      // appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.filter, color: Colors.black), label: 'Filter'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark,  color: Colors.black), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.chat,  color: Colors.black), label: 'Chats'),
        ],
      ),
      body: ChatPage(),
    );
  }
}

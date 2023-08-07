import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        
      ),
      body: SafeArea(
        child: SingleChildScrollView(),
      ),
    );
  }
}

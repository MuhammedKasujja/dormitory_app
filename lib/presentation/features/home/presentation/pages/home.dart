import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/models/models.dart';
import '../blocs/blocs.dart';
import '../constants/constants.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  void initState() {
    context
        .read<DormitoryBloc>()
        .add(const FetchDormitories(DormitoryType.female));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MenuDrawer(),
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(drawerIcon),
          onPressed: _openDrawer,
        ),
        actions: const [NotificationIcon()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Spacing.medium(),
              const DormitoryFilterWidget(),
              Spacing.small(),
              const SectionHeader(title: 'Dorms Near You'),
              BlocBuilder<DormitoryBloc, DormitoryState>(
                builder: (context, state) {
                  if (state.data != null) {
                    return DormitoryCarousel(dormitories: state.data!);
                  }
                  return Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.amber,
                  );
                },
              ),
              Spacing.medium(),
              const SectionHeader(title: 'Male Dormitories'),
              BlocBuilder<DormitoryBloc, DormitoryState>(
                builder: (context, state) {
                  if (state.data != null) {
                    return DormitoryCarousel(dormitories: state.data!);
                  }
                  return Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.amber,
                  );
                },
              ),
              Spacing.medium(),
              const SectionHeader(title: 'Female Dormitories'),
              BlocBuilder<DormitoryBloc, DormitoryState>(
                builder: (context, state) {
                  if (state.data != null) {
                    return DormitoryCarousel(dormitories: state.data!);
                  }
                  return Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.amber,
                  );
                },
              ),
              Spacing.medium(),
              const SectionHeader(title: 'Popular Dormitories'),
              BlocBuilder<DormitoryBloc, DormitoryState>(
                builder: (context, state) {
                  if (state.data != null) {
                    return DormitoryCarousel(dormitories: state.data!);
                  }
                  return Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.amber,
                  );
                },
              ),
              Spacing.medium(),
              const SectionHeader(title: 'All Dormitories'),
              BlocBuilder<DormitoryBloc, DormitoryState>(
                builder: (context, state) {
                  if (state.data != null) {
                    return DormitoryCarousel(dormitories: state.data!);
                  }
                  return Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.amber,
                  );
                },
              ),
              Spacing.medium(),
            ],
          ),
        ),
      ),
    );
  }
}

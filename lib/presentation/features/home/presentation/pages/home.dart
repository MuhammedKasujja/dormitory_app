import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/models.dart';
import '../blocs/blocs.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      drawer: const MenuDrawer(),
      appBar: AppBar(
        actions: const [NotificationIcon()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 275.h,
                child: BlocBuilder<DormitoryBloc, DormitoryState>(
                  builder: (context, state) {
                    if (state.data != null) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: state.data!.length,
                        itemBuilder: (BuildContext context, int index) =>
                            DormitoryCard(dormitory: state.data![index]),
                      );
                    }
                    return Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.amber,
                    );
                  },
                ),
              ),
              Spacing.medium(),
            ],
          ),
        ),
      ),
    );
  }
}

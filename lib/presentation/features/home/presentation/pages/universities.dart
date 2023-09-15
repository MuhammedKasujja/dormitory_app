import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';
import '../widgets/widgets.dart';

class UniversitiesPage extends StatelessWidget {
  const UniversitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Universities'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.close,
          ),
        ),
      ),
      body: BlocBuilder<UniversityBloc, UniversityState>(
        builder: (context, state) {
          if (state.data != null) {
            return ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 24.r),
              itemCount: state.data!.length,
              itemBuilder: (context, index) {
                return NearbyUniversity(
                  university: state.data![index],
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 16.r),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

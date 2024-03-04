import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/saved_dorms_bloc.dart';

class SavedDormsPage extends StatelessWidget {
  const SavedDormsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Dorms'),
      ),
      body: BlocBuilder<SavedDormsBloc, SavedDormsState>(
        builder: (context, state) {
          return (state.data != null)
              ? ListView.separated(
                padding: EdgeInsets.symmetric(
                    horizontal: 16.r, vertical: 24.r),
                itemCount: state.data!.length,
                itemBuilder: (context, index) {
                  return DormitoryCard(dormitory: state.data![index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(height: 24.r),
              )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

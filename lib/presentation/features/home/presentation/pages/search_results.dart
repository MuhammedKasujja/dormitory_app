import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';
import '../widgets/dormitory_card.dart';

class SearchResultsPage extends StatelessWidget {
  const SearchResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Results'),
      ),
      body: BlocBuilder<DormitoryBloc, DormitoryState>(
        builder: (context, state) {
          if (state.data != null) {
            return ListView.separated(

              padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 24.r),
              itemCount: state.data!.length,
              itemBuilder: (context, index) {
                return DormitoryCard(dormitory: state.data![index]);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 24.r),
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

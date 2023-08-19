import 'package:dormitory_app/infra/infra.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/faqs_cubit.dart';
import '../widgets/widgets.dart';

class FaqsQuestionsScreen extends StatelessWidget {
  const FaqsQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQs'),
      ),
      body: BlocProvider(
        create: (context) => FaqsCubit()..loadQuestions(),
        child: ExpandableTheme(
          data: ExpandableThemeData(
            iconColor: const Color(0xFF90949E),
            useInkWell: true,
            expandIcon: Icons.add,
            collapseIcon: Icons.close,
            iconSize: 16.sp,
          ),
          child: BlocBuilder<FaqsCubit, FaqsState>(
            builder: (context, state) {
              return ListView.builder(
                itemCount: state.questions.length,
                itemBuilder: (context, index) => FaqQuestionItem(
                  question: state.questions[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

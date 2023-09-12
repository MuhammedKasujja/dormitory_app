import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/dormitory.dart';
import 'dormitory_card.dart';

class DormitoryCarousel extends StatelessWidget {
  final List<Dormitory> dormitories;
  const DormitoryCarousel({super.key, required this.dormitories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 275.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: dormitories.length,
        itemBuilder: (BuildContext context, int index) =>
            DormitoryCard(dormitory: dormitories[index]),
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 17.w,
        ),
      ),
    );
  }
}

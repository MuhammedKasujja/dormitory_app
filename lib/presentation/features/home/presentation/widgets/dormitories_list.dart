import 'package:flutter/material.dart';

import '../../domain/entities/dormitory.dart';
import 'dormitory_carousel.dart';
import 'section_header.dart';

class DormitoryTypeListWidget extends StatelessWidget {
  final String type;
  final List<Dormitory> dormitories;
  const DormitoryTypeListWidget({
    super.key,
    required this.type,
    required this.dormitories,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: type),
        DormitoryCarousel(
          dormitories: dormitories,
        ),
      ],
    );
  }
}

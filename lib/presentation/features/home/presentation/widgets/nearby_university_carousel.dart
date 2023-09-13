import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/university.dart';
import 'nearby_university.dart';

class NearbyUniversityCarousel extends StatelessWidget {
  final List<University> universities;
  const NearbyUniversityCarousel({super.key, required this.universities});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 40.h,
        maxHeight: 48.0,
      ),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) =>
            ListView.separated(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: universities.length,
          itemBuilder: (context, index) {
            return NearbyUniversity(
              university: universities[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(width: 16.r),
        ),
      ),
    );
  }
}

class PrototypeHeight extends StatelessWidget {
  final Widget prototype;
  final ListView listView;

  const PrototypeHeight({
    Key? key,
    required this.prototype,
    required this.listView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IgnorePointer(
          child: Opacity(
            opacity: 0.0,
            child: prototype,
          ),
        ),
        const SizedBox(width: double.infinity),
        Positioned.fill(child: listView),
      ],
    );
  }
}

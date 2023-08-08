import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LegalCardItem extends StatelessWidget {
  final LegalItemModel model;
  const LegalCardItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 16.r),
          child: Text(
            model.title,
            style: TextStyle(
              color: AppColors.text1,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        ...model.items
            .asMap()
            .entries
            .map(
              (e) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  e.value.subtitle != null
                      ? Padding(
                        padding: EdgeInsets.only(top: 16.r),
                        child: Text(
                            '${e.key+1}. ${e.value.subtitle!}',
                            style: TextStyle(
                              color: AppColors.text2,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                      )
                      : const SizedBox.shrink(),
                  const SizedBox().scaleHeight(8),
                  Text(
                    e.value.body,
                    style: TextStyle(
                      color: AppColors.text2,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      // letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ],
    );
  }
}

class LegalItemModel {
  final String title;
  final List<LegalBodyItem> items;
  LegalItemModel({required this.title, required this.items});
}

class LegalBodyItem {
  final String? subtitle;
  final String body;

  LegalBodyItem({this.subtitle, required this.body});
}

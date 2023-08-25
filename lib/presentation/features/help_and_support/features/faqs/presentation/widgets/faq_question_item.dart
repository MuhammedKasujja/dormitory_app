import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../../data/models/models.dart';

class FaqQuestionItem extends StatelessWidget {
  final FaqQuestion question;
  const FaqQuestionItem({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      initialExpanded: false,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.r),
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: false,
              ),
              header: Text(
                question.title,
                style: TextStyle(
                  color: AppColors.text500,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  height: 1.57,
                ),
              ),
              collapsed: const SizedBox.shrink(),
              expanded: Text(question.descrption).description(),
              builder: (_, collapsed, expanded) {
                return Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                  theme: const ExpandableThemeData(
                    crossFadePoint: 0,
                  ),
                );
              },
            ),
          ),
          const Divider(height: .5),
        ],
      ),
    );
  }
}

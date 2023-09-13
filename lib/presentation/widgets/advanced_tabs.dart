import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/logic/cubits/cubits.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdvancedAppTabs extends StatelessWidget {
  final List<String> tabs;
  final List<Widget> views;
  const AdvancedAppTabs({super.key, required this.tabs, required this.views})
      : assert(views.length == tabs.length),
        assert(views.length > 1 && tabs.length > 1);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ToggleTabsCubit(),
      child: BlocBuilder<ToggleTabsCubit, ToggleTabsState>(
        buildWhen: (previous, current) =>
            previous.selectedTab != current.selectedTab,
        builder: (context, state) {
          return Column(
            children: [
              Container(
                height: 38.h,
                padding: EdgeInsets.all(2.r),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: tabs
                      .asMap()
                      .entries
                      .map(
                        (t) => Expanded(
                          child: _TabItem(
                            label: t.value,
                            index: t.key,
                            selectedIndex: state.selectedTab,
                            onToggle: (index) => context
                                .read<ToggleTabsCubit>()
                                .changeTab(index),
                          ),
                        ),
                      )
                      .toList(growable: false),
                ),
              ),
              Spacing.medium(),
              Wrap(children: [views[state.selectedTab]]),
            ],
          );
        },
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  final Function(int selectedIndex) onToggle;
  final int index;
  final int selectedIndex;
  final String label;
  const _TabItem({
    required this.index,
    required this.onToggle,
    required this.selectedIndex,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 160,
      height: 38.h,
      onPressed: () => onToggle(index),
      color: selectedIndex == index ? Colors.white : null,
      textColor: selectedIndex == index ? Colors.black : AppColors.textHint,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14.sp,
        ),
      ),
    );
  }
}

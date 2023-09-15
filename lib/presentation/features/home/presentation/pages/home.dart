import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/auth/auth.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/models/models.dart';
import '../blocs/blocs.dart';
import '../constants/constants.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  void initState() {
    context
        .read<DormitoryBloc>()
        .add(const FetchDormitories(DormitoryType.female));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MenuDrawer(),
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(drawerIcon),
          onPressed: _openDrawer,
        ),
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi,',
              style: TextStyle(
                color: AppColors.text200,
                fontSize: 14.sp,
                height: 1.57,
              ),
            ),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Text(
                  state.status.isAuthenticated ? state.user!.name : 'Guest',
                  style: TextStyle(
                    color: AppColors.text500,
                    fontSize: 20.sp,
                    height: 1.15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.2.sp,
                  ),
                );
              },
            )
          ],
        ),
        actions: const [NotificationIcon()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Spacing.medium(),
              const DormitoryFilterWidget(),
              const Spacing(22),
              const SectionHeader(title: 'Dorms Near You'),
              BlocBuilder<DormitoryBloc, DormitoryState>(
                builder: (context, state) {
                  if (state.data != null) {
                    return DormitoryCarousel(dormitories: state.data!);
                  }
                  return const DormitoryCardShimmer();
                },
              ),
              Spacing.small(),
              const SectionHeader(title: 'Popular Cities', route: Routes.allCities,),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 40.h,
                  maxHeight: 48.0,
                ),
                child: BlocBuilder<CityBloc, CityState>(
                  builder: (context, state) {
                    if (state.data != null) {
                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.data!.length,
                        itemBuilder: (context, index) {
                          return PopularCity(city: state.data![index]);
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            SizedBox(width: 16.r),
                      );
                    }
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: AppColors.divider),
                      ),
                      child: const Text(''),
                    );
                  },
                ),
              ),
              Spacing.small(),
              const SectionHeader(title: 'Near Universities', route: Routes.allUniversities,),
              BlocBuilder<UniversityBloc, UniversityState>(
                builder: (context, state) {
                  if (state.data != null) {
                    return NearbyUniversityCarousel(universities: state.data!);
                  }
                  return Container(
                    height: 40.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: AppColors.divider),
                    ),
                    child: const Text(''),
                  );
                },
              ),
              Spacing.medium(),
              const SectionHeader(title: 'Male Dormitories'),
              BlocBuilder<DormitoryBloc, DormitoryState>(
                builder: (context, state) {
                  if (state.data != null) {
                    return DormitoryCarousel(dormitories: state.data!);
                  }
                  return const DormitoryCardShimmer();
                },
              ),
              Spacing.medium(),
              const SectionHeader(title: 'Female Dormitories'),
              BlocBuilder<DormitoryBloc, DormitoryState>(
                builder: (context, state) {
                  if (state.data != null) {
                    return DormitoryCarousel(dormitories: state.data!);
                  }
                  return const DormitoryCardShimmer();
                },
              ),
              Spacing.medium(),
              const SectionHeader(title: 'Popular Dormitories'),
              BlocBuilder<DormitoryBloc, DormitoryState>(
                builder: (context, state) {
                  if (state.data != null) {
                    return DormitoryCarousel(dormitories: state.data!);
                  }
                  return const DormitoryCardShimmer();
                },
              ),
              Spacing.medium(),
              const SectionHeader(title: 'All Dormitories'),
              BlocBuilder<DormitoryBloc, DormitoryState>(
                builder: (context, state) {
                  if (state.data != null) {
                    return DormitoryCarousel(dormitories: state.data!);
                  }
                  return const DormitoryCardShimmer();
                },
              ),
              Spacing.medium(),
            ],
          ),
        ),
      ),
    );
  }
}

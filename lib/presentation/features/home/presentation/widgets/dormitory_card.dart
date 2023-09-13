import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../domain/entities/dormitory.dart';
import '../blocs/blocs.dart';
import '../constants/constants.dart';
import 'facility_item.dart';
import 'more_facilities.dart';

class DormitoryCard extends StatelessWidget {
  final Dormitory dormitory;
  const DormitoryCard({
    super.key,
    required this.dormitory,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<DormitoryBloc>().add(FetchDormitoryDetails(dormitory.id));
      },
      borderRadius: BorderRadius.circular(15.r),
      child: Container(
        width: 326.w,
        height: 274.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: AppColors.divider,
          ),
        ),
        child: SizedBox(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                ),
                child: CacheImage(
                  height: 132.h,
                  imageUrl: dormitory.defaultPhoto,
                ),
              ),
              ColoredBox(
                color: AppColors.textSecondary,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 4.r,
                    horizontal: 16.r,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(freeFacilityIcon),
                      SizedBox(width: 8.w),
                      Text(
                        dormitory.facilities.first.name,
                        style: TextStyle(
                          color: AppColors.text50,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    dormitory.name,
                                    style: TextStyle(
                                      color: AppColors.text500,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      height: 1.57,
                                    ),
                                  ),
                                  Text(
                                    '${dormitory.location.city.name}, ${dormitory.location.address}',
                                    style: TextStyle(
                                      color: AppColors.text300,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      height: 1.6,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Spacing.xs(),
                          InkWell(
                            onTap: () {
                              // context
                              //     .read<LocalDormitoryBloc>()
                              //     .add(AddLocalDormitory(dormitory));
                            },
                            child: Icon(
                              Icons.bookmark_border_outlined,
                              color: AppColors.text300,
                            ),
                          ),
                        ],
                      ),
                      const Spacing(12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    spacing: 8.w,
                                    runSpacing: 8.h,
                                    children: dormitory.facilities
                                        .sublist(0, 2)
                                        .map(
                                          (facilityItem) =>
                                              DormitoryFacilityItem(
                                            facilityItem: facilityItem,
                                          ),
                                        )
                                        .toList(),
                                  ),
                                  Spacing.xs(),
                                  Row(
                                    children: [
                                      ...dormitory.facilities
                                          .sublist(2, 4)
                                          .map(
                                            (e) => DormitoryFacilityItem(
                                              facilityItem: e,
                                            ),
                                          )
                                          .toList(),
                                      FacilityMoreIcon(
                                        count: dormitory.facilities.length - 4,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            // flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  dormitory.previousPay != null
                                      ? dormitory.previousPay!.pay
                                      : '',
                                  style: TextStyle(
                                    color: AppColors.text200,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: dormitory.currentPay.pay,
                                    style: TextStyle(
                                      color: AppColors.success500,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5,
                                    ),
                                    children: [
                                      TextSpan(
                                        style: TextStyle(
                                          color: AppColors.text400,
                                        ),
                                      )
                                    ],
                                  ),
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

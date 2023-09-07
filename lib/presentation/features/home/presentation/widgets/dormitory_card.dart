import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/home/presentation/constants/constants.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../data/models/models.dart';

class DormitoryCard extends StatelessWidget {
  final DormitoryModel dormitory;
  const DormitoryCard({
    super.key,
    required this.dormitory,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: AppColors.divider,
          )),
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(
              height: 132.h,
              width: double.infinity,
              child: ImageLoader(
                imageUrl: dormitory.defaultPhoto,
                placeholderImage: dormitoryMissing,
              ),
            ),
            ColoredBox(
              color: AppColors.textSecondary,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 4.r,
                  horizontal: 16.r,
                ),
                child: Center(
                  child: Text(
                    dormitory.facilities.first.name,
                    style: TextStyle(
                      color: AppColors.text50,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.sp),
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
                      Icon(
                        Icons.bookmark_border_outlined,
                        color: AppColors.text300,
                      ),
                    ],
                  ),
                  const Spacing(12),
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: SizedBox(
                          width: double.infinity,
                          child: Wrap(
                            spacing: 8.w,
                            runSpacing: 8.h,
                            children: dormitory.facilities
                                .sublist(0, 4)
                                .map(
                                  (e) => Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.r,
                                      vertical: 2.r,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                        border: Border.all(
                                          color: AppColors.divider,
                                        )),
                                    child: Text(
                                      e.name,
                                      style: TextStyle(
                                        color: AppColors.text500,
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                      Flexible(
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
            )
          ],
        ),
      ),
    );
  }
}

import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../data/models/models.dart';

class VourcherDetailsModal extends StatelessWidget {
  final VourcherModel vourcher;
  const VourcherDetailsModal({super.key, required this.vourcher});

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      title: 'Voucher Details',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Container(
                  color: Colors.grey,
                  width: 140.w,
                  height: 140.w,
                ),
              ),
              SizedBox(
                width: 16.r,
              ),
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: AppColors.divider,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.r, vertical: 8.r),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Text(
                                '${vourcher.discount}%',
                                style: TextStyle(
                                  fontSize: 28.sp,
                                  height: 1.214,
                                  letterSpacing: -0.56.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.text400,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Flexible(
                              flex: 1,
                              child: Row(
                                children: [
                                  Container(
                                    width: 12.w,
                                    height: 12.w,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(50.r),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  const Text('Active'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacing.xs(),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: AppColors.divider,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.r, vertical: 8.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              vourcher.type,
                              style: TextStyle(
                                fontSize: 12.sp,
                                height: 1.5,
                                color: const Color(0xFF428BC1),
                              ),
                            ),
                            const Spacing(4),
                            Text(
                              vourcher.subject,
                              style: TextStyle(
                                fontSize: 14.sp,
                                height: 1.57,
                                color: AppColors.text500,
                              ),
                            ),
                            const Spacing(4),
                            Text(
                              'CODE: ${vourcher.code}',
                              style: TextStyle(
                                fontSize: 12.sp,
                                height: 1.5,
                                color: AppColors.text200,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Spacing.medium(),
          const Divider(),
          Spacing.medium(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4.r, horizontal: 12.r),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F5F7),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(
              'Valid From ${vourcher.startTime} - ${vourcher.endTime}',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                height: 1.5,
                color: AppColors.text400,
              ),
            ),
          ),
          Spacing.medium(),
          Text(
            'Terms and Conditions:',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              height: 1.25,
              letterSpacing: -0.16.sp,
              color: AppColors.text500,
            ),
          ),
          Spacing.small(),
          ...vourcher.termsAndConditions
              .map(
                (tc) => Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.r),
                      child: Container(
                        width: 4.w,
                        height: 4.w,
                        decoration: BoxDecoration(
                          color: AppColors.text400,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        tc,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.57,
                          color: AppColors.text400,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList()
        ],
      ),
    );
  }
}

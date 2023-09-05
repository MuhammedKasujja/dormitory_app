import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../data/models/models.dart';
import 'voucher_status.dart';
import 'voucher_terms_and_conditions.dart';
import 'voucher_validity.dart';

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
                child: SizedBox(
                  width: 140.w,
                  height: 140.w,
                  child: ImageLoader(
                    imageUrl: vourcher.photoUrl,
                    placeholderImage: Assets.voucher,
                  ),
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
                          horizontal: 12.r,
                          vertical: 8.r,
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              child: SizedBox(
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${vourcher.discount}%',
                                      style: TextStyle(
                                        fontSize: 28.sp,
                                        height: 1.214,
                                        letterSpacing: -0.56.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.text400,
                                      ),
                                    ),
                                    Text(
                                      'OFF',
                                      style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.text300,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Flexible(
                              child: VoucherStatusWidget(
                                status: vourcher.status,
                              ),
                            ),
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
                          horizontal: 12.r,
                          vertical: 8.r,
                        ),
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
          VoucherValidity(
            startTime: vourcher.startTime,
            endTime: vourcher.endTime,
          ),
          Spacing.medium(),
          VoucherTermsAndConditions(
            teramAndConditions: vourcher.termsAndConditions,
          )
        ],
      ),
    );
  }
}

import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../data/models/voucher.dart';
import 'card_clipper.dart';
import 'vourcher_details_modal.dart';

class VourcherCard extends StatelessWidget {
  final VourcherModel vourcher;
  const VourcherCard({super.key, required this.vourcher});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showVourcherDetails(context),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(4, 3), // changes position of shadow
                  ),
                ],
              ),
              child: CustomPaint(
                // size: Size(double.infinity, 125),
                painter: CardClipper(),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24.r, 20.r, 16.r, 20.r),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: SizedBox(
                          width: 72.w,
                          height: 72.w,
                          child: ImageLoader(
                            imageUrl: vourcher.photoUrl,
                            placeholderImage: Assets.voucher,
                          ),
                        ),
                      ),
                      SizedBox(width: 40.w),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${vourcher.discount}%',
                                      style: TextStyle(
                                        fontSize: 24.sp,
                                        height: 1.16,
                                        letterSpacing: -0.24.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.text500,
                                      ),
                                    ),
                                    Text(
                                      'OFF',
                                      style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.text300,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 24.w),
                                Text(
                                  vourcher.code,
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    height: 1.6,
                                    color: AppColors.text200,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              vourcher.subject,
                              style: TextStyle(
                                fontSize: 14.sp,
                                height: 1.57,
                                color: AppColors.text400,
                              ),
                            ),
                            const Spacing(12),
                            Row(
                              children: [
                                Flexible(
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      vourcher.type,
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        height: 1.5,
                                        color: AppColors.text300,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 12.r),
                                  child: Container(
                                    height: 18.h,
                                    width: .5.w,
                                    color: AppColors.divider,
                                  ),
                                ),
                                Flexible(
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      '${vourcher.startTime} - ${vourcher.endTime}',
                                      style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.success500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showVourcherDetails(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.r),
        ),
      ),
      builder: (context) {
        return VourcherDetailsModal(
          vourcher: vourcher,
        );
      },
    );
  }
}

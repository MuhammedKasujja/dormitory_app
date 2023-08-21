import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/models/models.dart';

class PaymentCardItem extends StatelessWidget {
  final PaymentCardModel cardModel;
  const PaymentCardItem({super.key, required this.cardModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Row(
          children: [
            Container(
              width: 58.w,
              height: 40.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(
                    color: AppColors.divider,
                    width: .8,
                  )),
              child: SvgPicture.string(
                cardModel.type == PaymentCardType.visa
                    ? Assets.visaIcon
                    : Assets.masterCardIcon,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cardModel.type.title).title(hasSpacing: false),
                    Text(
                      cardModel.cardNumber,
                      style: TextStyle(
                        color: AppColors.text300,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16.w,
              color: const Color(0xFFC3C6D2),
            )
          ],
        ),
      ),
    );
  }
}

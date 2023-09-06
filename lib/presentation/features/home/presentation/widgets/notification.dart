import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/vouchers/vouchers.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/constants.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8.r,
        horizontal: 16.r,
      ),
      child: Stack(
        children: [
          InkWell(
            onTap: () async {
              context
                  .read<VouchersBloc>()
                  .add(const FetchSingleVourcher('VW882SQ0'));
              Navigator.pushNamed(context, Routes.redeemVourcher);
            },
            child: SvgPicture.asset(notificationIcon),
          ),
          Positioned(
            top: 1,
            right: 5.5,
            child: Container(
              width: 6.w,
              height: 6.w,
              decoration: BoxDecoration(
                color: AppColors.error500,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          )
        ],
      ),
    );
  }
}

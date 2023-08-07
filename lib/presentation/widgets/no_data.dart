import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoDataWidget extends StatelessWidget {
  final String message;
  const NoDataWidget({Key? key, this.message = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message ,//?? //LocaleKeys.noDataFound.tr(),
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../common/utils/app_colors.dart';

class WidgetCard extends StatelessWidget {
  final String title;
  final String details;
  final String more;

  const WidgetCard({
    Key? key,
    required this.title,
    required this.details,
    required this.more,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 240,
      decoration: BoxDecoration(
        color: AppColors.mainRed.withOpacity(0.06),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.mainRed.withOpacity(0.09),
        )
      ),
      margin: EdgeInsets.only(right: 8),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  details,
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    color: AppColors.mainGrey,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  more,
                  style: TextStyle(
                    color: AppColors.mainGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.chevron_right_rounded, color: AppColors.mainGrey,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
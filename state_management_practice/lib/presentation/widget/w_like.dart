import 'package:flutter/material.dart';
import 'package:state_management_practice/common/app_color.dart';
import 'package:state_management_practice/common/app_fonts.dart';
import 'package:state_management_practice/controller/like_controller.dart';
import 'package:state_management_practice/model/item.dart';

import 'w_heart.dart';

class LikeWidget extends StatelessWidget {
  const LikeWidget({
    super.key,
    required this.item,
  });
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'asset/images/mockImg.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: AppFonts.content.copyWith(fontSize: 18),
                ),
                Text(
                  item.location,
                  style: AppFonts.content
                      .copyWith(fontSize: 12, color: AppColor.grey),
                ),
                Text(
                  '${item.price}원',
                  style: AppFonts.title.copyWith(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () => LikeController.to.clickLike(item),
          child: HeartWidget(item: item),
        ),
      ],
    );
  }
}

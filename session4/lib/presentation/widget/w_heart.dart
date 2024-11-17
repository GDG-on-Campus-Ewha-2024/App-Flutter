import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:session4/common/app_colors.dart';
import 'package:session4/controller/like_controller.dart';
import 'package:session4/model/item.dart';

class HeartWidget extends StatelessWidget {
  const HeartWidget(LikeController to, {
    super.key,
    required this.item,
    required this.borderColor,
  });

  final Item item;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => LikeController.to.clickLike(item),
        child: Obx(
          () => LikeController.to.likeItems.contains(item)
              ? const Icon(
                  Icons.favorite_sharp,
                  color: AppColors.orange,
                  size: 20,
                )
              : Icon(
                  Icons.favorite_border,
                  size: 20,
                  color: borderColor,
                ),
        ));
  }
}

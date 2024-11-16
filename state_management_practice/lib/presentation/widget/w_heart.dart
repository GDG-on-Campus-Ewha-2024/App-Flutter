import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/app_color.dart';
import '../../controller/like_controller.dart';
import '../../model/item.dart';

class HeartWidget extends StatelessWidget {
  const HeartWidget({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => LikeController.to.clickLike(item),
      child: Obx(
        () => LikeController.to.likeItems.contains(item)
            ? const Icon(
                Icons.favorite_rounded,
                color: AppColor.orange,
              )
            : const Icon(
                Icons.favorite_outline_rounded,
                color: AppColor.white,
              ),
      ),
    );
  }
}

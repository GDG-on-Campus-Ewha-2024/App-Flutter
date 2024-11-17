import 'package:flutter/material.dart';
import 'package:session4/controller/like_controller.dart';
import 'package:session4/presentation/widget/w_heart.dart';
import '../../common/app_colors.dart';
import '../../common/app_fonts.dart';
import 'package:session4/model/item.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.item,
  });
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(
              'asset/images/clothes.jpeg',
              width: 190,
              height: 200,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                decoration:
                    BoxDecoration(color: AppColors.black.withOpacity(0.5)),
                child: Text(
                  '직잭 세일',
                  style: AppFonts.content.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: HeartWidget(LikeController.to,
                    item: item, borderColor: AppColors.white))
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        item.shopName,
                        style: AppFonts.title.copyWith(fontSize: 15),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.orange.withOpacity(0.3)),
                        child: Text(
                          'M',
                          style: AppFonts.content
                              .copyWith(color: AppColors.orange, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_vert,
                    size: 20,
                    color: AppColors.grey,
                  ),
                ],
              ),
              Text(
                item.name,
                style: AppFonts.subText,
              ),
              Row(
                children: [
                  item.isSale
                      ? Text(
                          '${item.sale}%',
                          style: AppFonts.title
                              .copyWith(color: AppColors.pink, fontSize: 16),
                        )
                      : const SizedBox(),
                  Text(
                    item.price.toString(),
                    style: AppFonts.title
                        .copyWith(color: AppColors.black, fontSize: 16),
                  ),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    color: AppColors.lightGrey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(3)),
                child: Text(
                  '무료배송',
                  style: AppFonts.subText
                      .copyWith(fontSize: 13, color: AppColors.grey),
                ),
              ),
              Text(
                '${item.people}만 명보는중',
                style: AppFonts.subText
                    .copyWith(color: AppColors.lightGrey, fontSize: 13),
              )
            ],
          ),
        )
      ],
    );
  }
}

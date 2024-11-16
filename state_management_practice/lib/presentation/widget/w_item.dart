import '../../index.dart';
import 'package:intl/intl.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.item,
  });
  final Item item;

  @override
  Widget build(BuildContext context) {
    var f = NumberFormat('###,###,###,###');

    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              'asset/images/mockImg.jpg',
              width: 190,
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration:
                    BoxDecoration(color: AppColor.black.withOpacity(0.7)),
                child: Text(
                  '직잭 세일',
                  style: AppFonts.title
                      .copyWith(fontSize: 10, color: AppColor.white),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: HeartWidget(item: item),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
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
                            color: AppColor.orange.withOpacity(0.3)),
                        child: Text(
                          'M',
                          style: AppFonts.title
                              .copyWith(color: AppColor.orange, fontSize: 9),
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_vert,
                    size: 20,
                    color: AppColor.grey,
                  )
                ],
              ),
              Text(
                item.name,
                style: AppFonts.content,
              ),
              Row(
                children: [
                  item.isSale
                      ? Text(
                          "${item.sale}% ",
                          style: AppFonts.title
                              .copyWith(color: AppColor.pink, fontSize: 16),
                        )
                      : const SizedBox(),
                  Text(
                    f.format(item.price),
                    style: AppFonts.title.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                  decoration: BoxDecoration(
                      color: AppColor.lightGrey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(0.3)),
                  child: Text(
                    '무료배송',
                    style: AppFonts.subText
                        .copyWith(fontSize: 10, color: AppColor.grey),
                  ),
                ),
              ),
              Text(
                '${item.people}만 명 보는 중',
                style: AppFonts.subText
                    .copyWith(color: AppColor.lightGrey, fontSize: 12),
              )
            ],
          ),
        ),
      ],
    );
  }
}

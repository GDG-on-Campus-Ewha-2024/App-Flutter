import 'package:session4/controller/like_controller.dart';
import 'package:session4/example.dart';

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
              'asset/images/clothes.jpeg',
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
                      .copyWith(fontSize: 13, color: AppColors.grey),
                ),
                Text(
                  '${item.price}원',
                  style: AppFonts.title.copyWith(fontSize: 18),
                ),
              ],
            )
          ],
        ),
        HeartWidget(LikeController.to, item: item, borderColor: AppColors.grey)
      ],
    );
  }
}

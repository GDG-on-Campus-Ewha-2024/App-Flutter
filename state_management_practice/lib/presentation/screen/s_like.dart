import 'package:state_management_practice/presentation/widget/w_like.dart';
import '../../index.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '관심목록',
          style: AppFonts.title,
        ),
      ),
      body: Obx(
        () => ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          separatorBuilder: ((context, index) => Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 1,
                width: double.infinity,
                color: AppColor.lightGrey.withOpacity(0.5),
              )),
          itemBuilder: (context, index) =>
              LikeWidget(item: LikeController.to.likeItems[index]),
          itemCount: LikeController.to.likeItems.length,
        ),
      ),
    );
  }
}

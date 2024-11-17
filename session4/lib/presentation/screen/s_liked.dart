import 'package:flutter/material.dart';
import 'package:session4/common/app_fonts.dart';
import 'package:session4/common/app_colors.dart';
import 'package:session4/controller/like_controller.dart';
import 'package:session4/presentation/widget/w_like.dart';

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
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        separatorBuilder: ((context, index) => Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 1,
              width: double.infinity,
              color: AppColors.lightGrey,
            )),
        itemBuilder: (context, index) => LikeWidget(
          item: LikeController.to.likeItems[index]
      ),
      itemCount: LikeController.to.likeItems.length,
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ses1/common/utils/app_icons.dart';

import 'package:ses1/presentation/widget/w_icon_with_text.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Image.asset('asset/image/logo.png'),
            leadingWidth: 40,
            actions: [
              SvgPicture.asset('asset/image/logo.png'),
              SvgPicture.asset('asset/icon/Icon_Alarm.svg',
                  width: 10, height: 10),
              SvgPicture.asset('asset/icon/Icon_Search.svg'),
              SvgPicture.asset(AppIcons.friend)
            ]),
        body: Column(children: [
          const Text('이화여대',
              style: TextStyle(fontFamily: 'PretendardExtraBold', fontSize: 30)),
            Container(
            width: 170,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xffF91F15).withOpacity(0.15),
              borderRadius: :BorderRadius.circular(15),
              border:Border.all(
                color: const Color(0xffF91F15).withOpacity(0.35))),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start, //.start: 가로축왼쪽정렬 
              children: [
              Text('개강 푸드 뭐먹음'), 
              Text('음식 공유하면 파티가 열려요'), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('참여하기'),
                  Icon(Icons.arrow_forward_ios_outlined,
                  color: Color(0xffA6A6A6), size: 12,) //ICON
                ],
              ),
             ],
             ),
            )  
             Padding(padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconWithTextWidget(
                  icon:Icons.school_rounded,
                  text:'학교\n홈'
                ),
                IconWithTextWidget(
                  icon: Icons.computer,
                  text: '포탈',
                ),
                IconWithTextWidget(
                  icon: Icons.bus_alert,
                  text: '셔틀버스',
                ),
              ],
            ),)
        ]));
  }
}



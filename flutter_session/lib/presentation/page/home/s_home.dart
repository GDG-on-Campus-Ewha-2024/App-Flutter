import 'package:flutter/material.dart';
import 'package:flutter_session/common/utils/app_colors.dart';
import 'package:flutter_session/common/utils/app_fonts.dart';
import 'package:flutter_session/common/utils/app_icons.dart';
import 'package:flutter_session/common/utils/app_images.dart';
import 'package:flutter_session/presentation/widget/w_empty_box.dart';
import 'package:flutter_svg/svg.dart';

import '../../widget/w_icon_with_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15), //로고와 왼쪽 화면 사이 간격 띄우기 위함
            child: Image.asset(
              AppImages.logo,
            ),
          ),
          actions: [
            SvgPicture.asset(
              //svg파일 (pub.dev에서 패키지 다운받아옴)
              AppIcons.search,
              width: 40,
              height: 40,
            ),
            SvgPicture.asset(
              AppIcons.alarm,
              width: 40,
              height: 40,
            ),
            SvgPicture.asset(
              AppIcons.friend,
              width: 40,
              height: 40,
            ),
          ]),
      body: SingleChildScrollView(
        // 스크롤 가능하게
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15, //body 전체 수평 간격 띄우기
            vertical: 10, //body 전체 수직 간격 띄우기
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //좌측 정렬
            children: [
              Text(
                '이화여대',
                style: AppFonts.title.copyWith(fontSize: 20),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10, right: 10, top: 7),
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                width: 190,
                height: 105,
                decoration: BoxDecoration(
                    color: const Color(0xffF91F15).withOpacity(0.05),
                    borderRadius: BorderRadius.circular(15), //모서리 둥글게
                    border: Border.all(
                      color: const Color(0xffF91F15).withOpacity(0.1),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, //children 내부 위젯들 사이 간격 띄우기
                  children: [
                    Column(
                      // UI를 보면 '개강 푸드 뭐먹음?'과 '음식 공유하면 파티가 열려요'가 붙어있고 참여하기가 따로 띄워져야 하므로 앞에 두개 column으로 묶어 한 위젯으로 만들어 준 것!
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '개강 푸드 뭐먹음?',
                          style: AppFonts.title.copyWith(fontSize: 15),
                        ),
                        Text('음식 공유하면 파티가 열려요🎉',
                            style: AppFonts.content.copyWith(
                              color: AppColors.darkgrey,
                              fontSize: 12,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '참여하기',
                          style: AppFonts.title
                              .copyWith(color: AppColors.darkgrey, fontSize: 13),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded,
                            color: Color(0xffA6A6A6), size: 12)
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconWithTextWidget(
                      icon: Icons.school_rounded,
                      text: '학교\n홈',
                    ),
                    IconWithTextWidget(
                      icon: Icons.menu_book_sharp,
                      text: '열람실\n현황',
                    ),
                    IconWithTextWidget(
                      icon: Icons.crisis_alert_outlined,
                      text: '포탈',
                    ),
                    IconWithTextWidget(
                      icon: Icons.bus_alert,
                      text: '셔틀버스',
                    ),
                    IconWithTextWidget(
                      icon: Icons.computer,
                      text: '사이버\n캠퍼스',
                    ),
                    IconWithTextWidget(
                      icon: Icons.alarm,
                      text: '학사\n공지',
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:20, right:20, bottom:30),
                child: Image.asset(AppImages.header),
              ),

              Row(
                children: [
                  Text(
                    '즐겨찾는 게시판 ',
                    style: AppFonts.title.copyWith(fontSize: 20, color: AppColors.black),

                  ),

                  wEmptyBox(160),

                  Text(
                    '더 보기 ',
                    style: AppFonts.content.copyWith(fontSize: 13, color: AppColors.darkgrey)
                    ,
                  ),
                  const Icon(Icons.arrow_forward_ios_rounded,
                            color: AppColors.darkgrey, size: 13)
                ],

              ),

              Container(
                margin: const EdgeInsets.only(bottom: 10, top: 10),
                padding: const EdgeInsets.only(left:15),
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color:AppColors.darkgrey.withOpacity(0.5))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          '비밀게시판',
                          style: AppFonts.content.copyWith(fontSize: 14, color: AppColors.darkgrey)
                          ),
                          
                          wEmptyBox(20),
                        Text(
                          '비밀게시판 내용',
                          style: AppFonts.content.copyWith(fontSize: 12, color: AppColors.grey),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '질문게시판',
                          style: AppFonts.content.copyWith(fontSize: 14, color: AppColors.darkgrey)
                          ),
                          
                          wEmptyBox(20),
                        Text(
                          '질문게시판 내용',
                          style: AppFonts.content.copyWith(fontSize: 12, color: AppColors.grey),
                        )
                          
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '정보게시판',
                          style: AppFonts.content.copyWith(fontSize: 14, color: AppColors.darkgrey)
                          ),
                          
                          wEmptyBox(20),
                        Text(
                          '정보게시판 내용',
                          style: AppFonts.content.copyWith(fontSize: 12, color: AppColors.grey),
                        )
                          
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '벗들의맛집',
                          style: AppFonts.content.copyWith(fontSize: 14, color: AppColors.darkgrey)
                          ),
                          
                          wEmptyBox(20),
                        Text(
                          '벗들의맛집 내용',
                          style: AppFonts.content.copyWith(fontSize: 12, color: AppColors.grey),
                        )
                          
                      ],
                    ),
                    
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

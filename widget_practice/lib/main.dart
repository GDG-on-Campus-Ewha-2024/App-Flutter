import 'package:flutter/material.dart';
import 'package:widget_practice/widget/widget_card.dart';
import 'package:widget_practice/widget/icon_text_button.dart';
import 'package:widget_practice/widget/board_list.dart';
import 'common/utils/app_icons.dart';
import 'common/utils/app_colors.dart';
import 'common/utils/app_images.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          toolbarHeight: 100,
          leadingWidth: 800,
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppImages.logo, width: 75, height: 75,),
                Row(
                  children: [
                    SizedBox(
                      width: 45,
                      child: Icon(AppIcons.search, size: 30, color: AppColors.mainBlack,),
                    ),
                    SizedBox(
                      width: 45,
                      child: Icon(AppIcons.notifications, size: 30, color: AppColors.mainBlack,),
                    ),SizedBox(
                      width: 45,
                      child: Icon(AppIcons.user, size: 30, color: Colors.orange,),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: Container(
          //color: Colors.blue,
          margin: EdgeInsets.only(left: 16, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "이화여대",
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    WidgetCard(
                      title: "개강푸드 뭐 먹음?",
                      details: "음식 공유하면 파티가 열려요🎉",
                      more: "참여하기"
                    ),
                    WidgetCard(
                      title: "교재 PDF 공유해도 될까?",
                      details: "대학생이 꼭 알아야 할 기초 상식",
                      more: "더보기"
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 35, left: 15, right: 15),
                      child: IconTextButton(
                        icon: AppIcons.house,
                        label: "학교\n홈",
                        color: AppColors.mainBlack,
                        iconSize: 40,
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 35, left: 15, right: 15),
                      child: IconTextButton(
                        icon: Icons.shelves,
                        label: "열람실\n현황",
                        color: AppColors.mainBlack,
                        iconSize: 40,
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 35, left: 15, right: 15),
                      child: IconTextButton(
                        icon: AppIcons.portal,
                        label: "포탈",
                        color: AppColors.mainBlack,
                        iconSize: 40,
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 35, left: 15, right: 15),
                      child: IconTextButton(
                        icon: AppIcons.bus,
                        label: "셔틀\n버스",
                        color: AppColors.mainBlack,
                        iconSize: 40,
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 35, left: 15, right: 15),
                      child: IconTextButton(
                        icon: AppIcons.cyberCampus,
                        label: "사이버\n캠퍼스",
                        color: AppColors.mainBlack,
                        iconSize: 40,
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 35, left: 15, right: 15),
                      child: IconTextButton(
                        icon: AppIcons.notifications,
                        label: "학사\n공지",
                        color: AppColors.mainBlack,
                        iconSize: 40,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 380,
                height: 95,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.greenAccent.withOpacity(0.30),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppColors.mainGrey.withOpacity(0.09),
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("우리 이제 밤샘 과제는 그만하자", style: TextStyle(fontSize: 17, color: AppColors.mainBlack, fontWeight: FontWeight.bold),),
                        Text("주제만 넣으면 10분 만에 과제 완성!", style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Image.asset(AppImages.logo, width: 50, height: 50,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40,bottom: 8, left: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "즐겨찾는 게시판",
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "더보기",
                          style: TextStyle(
                            color: AppColors.mainGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(AppIcons.rightArrow, color: AppColors.mainGrey,),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: 380,
                height: 600-432,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  border: Border.all(
                    color: AppColors.mainGrey.withOpacity(0.09),
                  ),
                ),
                child: Column(
                  children: [
                    boardList(name: "비밀게시판", details: "비밀게시판입니다"),
                    boardList(name: "질문게시판", details: "질문이 있어요"),
                    boardList(name: "정보게시판", details: "정보게시판입니다"),
                    boardList(name: "벗들의 맛집", details: "맛집 추천 부탁"),

                  ],
                ),
              ),
            ],
            
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 100,
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconTextButton(icon: AppIcons.home, label: '홈', color: AppColors.mainBlack,),
              IconTextButton(icon: AppIcons.timetable, label: '시간표'),
              IconTextButton(icon: AppIcons.noticeBoard, label: '게시판'),
              IconTextButton(icon: AppIcons.chat, label: '채팅'),
              IconTextButton(icon: AppIcons.campusPick, label: '캠퍼스픽'),
            ],
          ),
        ),
      ),
      theme: ThemeData(fontFamily: 'Pretendard'),
      themeMode: ThemeMode.system,
    );

  }
}

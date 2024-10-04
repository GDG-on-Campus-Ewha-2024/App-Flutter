import 'package:flutter/material.dart';
import 'package:widget_practice/common/utils/app_colors.dart';

class boardList extends StatelessWidget {
  final String name;
  final String details;

  const boardList({
    Key? key,
    required this.name,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 110,
          height: 35,
          alignment: Alignment.center,
          child: Text(name, style: TextStyle(fontSize: 16),),
        ),
        Container(
          width: 240,
          height: 35,
          alignment: Alignment.centerLeft,
          child: Text(details, style: TextStyle(color: AppColors.mainGrey),),
        ),
        Icon(Icons.fiber_new_rounded, color: AppColors.mainRed, size: 15,),
      ],
    );
  }
}
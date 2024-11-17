import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:session4/main.dart';
import 'package:session4/model/item.dart';

void main(){
  Get.put(LikeController());
  runApp(const MyApp());
}



class LikeController extends GetxController{
  RxList<Item> likeItems = <Item>[].obs;

  void clickLike(Item items){
    if(likeItems.contains(items)){
      likeItems.remove(items);
    } else{
      likeItems.add(items);
    }
  }

  static LikeController get to => Get.find();
}
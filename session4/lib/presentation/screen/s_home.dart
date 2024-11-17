import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:session4/common/app_fonts.dart';
import 'package:session4/controller/navigator_controller.dart';
import 'package:session4/presentation/widget/w_item.dart';
import 'package:session4/presentation/screen/s_liked.dart';
import 'package:session4/model/item.dart';

final items = [
  Item(
    id: 1,
    shopName: 'shopName1',
    name: 'name1',
    sale: 10,
    isSale: true,
    people: 1.5,
    price: 125000,
    like: false,
    location: '지역 이름',
  ),
  Item(
    id: 2,
    shopName: 'shopName1',
    name: 'name2',
    sale: 13,
    isSale: true,
    people: 1.5,
    price: 12000,
    like: false,
    location: '지역 이름',
  ),
  Item(
    id: 3,
    shopName: 'shopName5',
    name: 'name3',
    sale: 0,
    isSale: false,
    people: 1.5,
    price: 19000,
    like: false,
    location: '지역 이름',
  ),
  Item(
    id: 4,
    shopName: 'shopName3',
    name: 'name4',
    sale: 10,
    isSale: true,
    people: 2.5,
    price: 22000,
    like: false,
    location: '지역 이름',
  ),
  Item(
    id: 5,
    shopName: 'shopName1',
    name: 'name5',
    sale: 0,
    isSale: false,
    people: 1.7,
    price: 115000,
    like: false,
    location: '지역 이름',
  ),
  Item(
    id: 6,
    shopName: 'shopName9',
    name: 'name6',
    sale: 40,
    isSale: true,
    people: 0.1,
    price: 35000,
    like: false,
    location: '지역 이름',
  ),
  Item(
    id: 7,
    shopName: 'shopName22',
    name: 'name7',
    sale: 29,
    isSale: true,
    people: 1.9,
    price: 213000,
    like: false,
    location: '지역 이름',
  )
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 150 / 250,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) => ItemWidget(item: items[index]),
        itemCount: items.length,
      ),
    );
  }
}

import 'package:state_management_practice/presentation/widget/w_item.dart';
import '../../index.dart';

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
      location: '지역 이름'),
  Item(
      id: 2,
      shopName: 'shopName1',
      name: 'name2',
      sale: 13,
      isSale: true,
      people: 1.5,
      price: 12000,
      like: false,
      location: '지역 이름'),
  Item(
      id: 3,
      shopName: 'shopName5',
      name: 'name3',
      sale: 0,
      isSale: false,
      people: 2.0,
      price: 150000,
      like: true,
      location: '지역 이름'),
  Item(
      id: 4,
      shopName: 'shopName3',
      name: 'name4',
      sale: 20,
      isSale: true,
      people: 0.5,
      price: 75000,
      like: false,
      location: '지역 이름'),
  Item(
      id: 5,
      shopName: 'shopName2',
      name: 'name5',
      sale: 5,
      isSale: false,
      people: 3.5,
      price: 40000,
      like: true,
      location: '지역 이름'),
  Item(
      id: 6,
      shopName: 'shopName4',
      name: 'name6',
      sale: 0,
      isSale: false,
      people: 1.0,
      price: 60000,
      like: false,
      location: '지역 이름'),
  Item(
      id: 7,
      shopName: 'shopName2',
      name: 'name7',
      sale: 15,
      isSale: true,
      people: 2.5,
      price: 55000,
      like: true,
      location: '지역 이름'),
  Item(
      id: 8,
      shopName: 'shopName3',
      name: 'name8',
      sale: 30,
      isSale: true,
      people: 1.8,
      price: 99000,
      like: false,
      location: '지역 이름'),
  Item(
      id: 9,
      shopName: 'shopName5',
      name: 'name9',
      sale: 0,
      isSale: false,
      people: 0.7,
      price: 30000,
      like: true,
      location: '지역 이름'),
  Item(
      id: 10,
      shopName: 'shopName1',
      name: 'name10',
      sale: 25,
      isSale: true,
      people: 1.2,
      price: 78000,
      like: false,
      location: '지역 이름'),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 125 / 250,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) => ItemWidget(item: items[index]),
        itemCount: items.length,
      ),

      //상품을 등록하는 페이지를 만들어요
      //floatingActionButton: FloatingActionButton(onPressed: {} {Get.to}),
    );
  }
}

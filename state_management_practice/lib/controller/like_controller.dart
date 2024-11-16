import 'package:get/get.dart';
import 'package:state_management_practice/model/item.dart';

class LikeController extends GetxController {
  RxList<Item> likeItems = <Item>[].obs;

  void clickLike(Item item) {
    if (likeItems.contains(item)) {
      likeItems.remove(item);
    } else {
      likeItems.add(item);
    }
  }

  static LikeController get to => Get.find();
}

import 'package:state_management_practice/presentation/screen/s_chat.dart';
import 'package:state_management_practice/presentation/screen/s_home.dart';
import 'package:state_management_practice/presentation/screen/s_people.dart';

import '../../index.dart';
import 's_like.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "대신동",
          style: AppFonts.title,
        ),
        centerTitle: false,
        actions: [
          const Icon(
            Icons.search,
            size: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LikeScreen())),
              child: const Icon(
                Icons.favorite_outline,
                size: 25,
              ),
            ),
          )
        ],
      ),
      body: Obx(() {
        return IndexedStack(
          index: NavigatorController.to.currentIndex.value,
          children: const [HomeScreen(), PeopleScreen(), ChatScreen()],
        );
      }),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            currentIndex: NavigatorController.to.currentIndex.value,
            onTap: (index) => NavigatorController.to.tapIndex(index),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people), label: 'people'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble), label: 'chat')
            ]),
      ),
    );
  }
}

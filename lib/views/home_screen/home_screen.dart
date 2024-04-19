import 'package:emart_plus/consts/consts.dart';
import 'package:emart_plus/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navBarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: account)
    ];

    var navBody = [
      Container(color: Colors.blue),
      Container(color: Colors.amber),
      Container(color: Colors.green),
      Container(color: Colors.cyan)
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
                child: navBody.elementAt(controller.currnetNavIndex.value)),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currnetNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navBarItem,
          onTap: (value) {
            controller.currnetNavIndex.value = value;
          },
        ),
      ),
    );
  }
}

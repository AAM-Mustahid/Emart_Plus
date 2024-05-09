import 'package:emart_plus/consts/consts.dart';
import 'package:emart_plus/consts/lists.dart';
import 'package:emart_plus/controllers/auth_controller.dart';
import 'package:emart_plus/views/auth_screen/login_screen.dart';
import 'package:emart_plus/views/profile_screen/components/details_cart.dart';
import 'package:emart_plus/widgets_common/bg_widget.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.edit, color: whiteColor),
              ).onTap(() {}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(imgProfile2, width: 60, fit: BoxFit.cover)
                      .box
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .make(),
                  10.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Shefat Al Mahmud".text.fontFamily(semibold).white.make(),
                      "mahmud15-4364@diu.edu.bd".text.white.make(),
                    ],
                  )),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                        color: whiteColor,
                      )),
                      onPressed: () async {
                        await Get.put(AuthController()).signoutMethod(context);
                        Get.offAll(() => const LoginScreen());
                      },
                      child: logout.text.fontFamily(semibold).white.make())
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCart(
                    count: "00",
                    title: "in your cart",
                    width: context.screenWidth / 3.4),
                detailsCart(
                    count: "00",
                    title: "in your wishlist",
                    width: context.screenWidth / 3.4),
                detailsCart(
                    count: "00",
                    title: "your orders",
                    width: context.screenWidth / 3.4),
              ],
            ),
            ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const Divider(color: lightGrey);
                    },
                    itemCount: profileButtonsList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset(
                          profileButtonIcon[index],
                          width: 22,
                        ),
                        title: profileButtonsList[index]
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                      );
                    })
                .box
                .white
                .rounded
                .margin(const EdgeInsets.all(12))
                .shadowSm
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .make()
                .box
                .color(redColor)
                .make(),
          ],
        ),
      ),
    ));
  }
}

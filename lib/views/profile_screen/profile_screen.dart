import 'package:emart_plus/consts/consts.dart';
import 'package:emart_plus/views/profile_screen/components/detailsCart.dart';
import 'package:emart_plus/widgets_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.edit, color: whiteColor),
              ).onTap(() {}),
              Row(
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
                      onPressed: () {},
                      child: logout.text.fontFamily(semibold).white.make())
                ],
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
              )
            ],
          ),
        ),
      ),
    ));
  }
}

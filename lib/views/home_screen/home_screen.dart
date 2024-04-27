import 'package:emart_plus/consts/consts.dart';
import 'package:emart_plus/consts/lists.dart';
import 'package:emart_plus/widgets_common/home_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: searchanything,
                hintStyle: TextStyle(color: textfieldGrey),
              ),
            ),
          ),
          VxSwiper.builder(
            itemCount: slidersList.length,
            itemBuilder: (context, index) {
              return Image.asset(
                slidersList[index],
                fit: BoxFit.fill,
              )
                  .box
                  .rounded
                  .clip(Clip.antiAlias)
                  .margin(const EdgeInsets.symmetric(horizontal: 8))
                  .make();
            },
          ),
          10.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                2,
                (index) => homeButtons(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth / 2.5,
                      icon: index == 0 ? icTodaysDeal : icFlashDeal,
                      title: index == 0 ? todaydeal : flashsale,
                    )),
          )
        ],
      )),
    );
  }
}

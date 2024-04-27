import 'package:emart_plus/consts/consts.dart';

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
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: whiteColor,
              ),
            ),
          )
        ],
      )),
    );
  }
}

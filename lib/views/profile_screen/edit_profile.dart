import 'dart:io';

import 'package:emart_plus/consts/consts.dart';
import 'package:emart_plus/controllers/profile_controller.dart';
import 'package:emart_plus/widgets_common/bg_widget.dart';
import 'package:emart_plus/widgets_common/custom_textfield.dart';
import 'package:emart_plus/widgets_common/our_button.dart';
import 'package:get/get.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ProfileController>();
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            controller.profileImgPath.isEmpty
                ? Image.asset(imgProfile2, width: 60, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make()
                : Image.file(File(controller.profileImgPath.value),
                        width: 100, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make(),
            10.heightBox,
            ourButton(
                color: redColor,
                onPress: () {
                  controller.changeImage(context);
                },
                textColor: whiteColor,
                title: "Change"),
            const Divider(),
            20.heightBox,
            customTextField(hint: nameHint, title: name, isPass: false),
            customTextField(hint: passwordHint, title: password, isPass: true),
            12.heightBox,
            SizedBox(
              width: context.screenWidth - 60,
              child: ourButton(
                  color: redColor,
                  onPress: () {},
                  textColor: whiteColor,
                  title: "Save"),
            ),
          ],
        )
            .box
            .white
            .shadowSm
            .padding(const EdgeInsets.all(16))
            .margin(const EdgeInsets.only(top: 50, left: 12, right: 12))
            .rounded
            .make(),
      ),
    ));
  }
}

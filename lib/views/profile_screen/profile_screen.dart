import 'package:emart_plus/consts/consts.dart';
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
              Row(
                children: [
                  Image.asset(imgProfile2, width: 130, fit: BoxFit.cover)
                      .box
                      .make(),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}

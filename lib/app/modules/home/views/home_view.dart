import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  // const HomeView({Key? key}) : super(key: key);
  double heightDevice = Get.height;
  double widthDevice = Get.width;

  @override
  Widget build(BuildContext context) {
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text("HOME"),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        width: Get.width,
        height: Get.height,
        alignment: Alignment.bottomRight,
        color: Colors.amber,
        child: LayoutBuilder(builder: (context, constraints) {
          double lebarKuning = constraints.maxWidth;
          double tinggiKuning = constraints.maxHeight;
          return Center(
              child: Stack(
            children: [
              Container(
                width: lebarKuning * 0.2,
                height: tinggiKuning * 0.4,
                color: Colors.red,
              )
            ],
          ));
        }),
      ),
    );
  }
}

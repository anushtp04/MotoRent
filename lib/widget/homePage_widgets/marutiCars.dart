import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/marutiCarController.dart';
import 'carListItems.dart';

class MarutiCars extends StatelessWidget {
  MarutiCars({super.key});
  final marutiController = Get.put(MarutiCarController());


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GridView.builder(
        itemCount: marutiController.carDetails.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: .9),
        itemBuilder: (context, index) {
          return CarListItem(
              id: marutiController.carDetails[index].id!,
              carName: marutiController.carDetails[index].name!,
              carBrand: marutiController.carDetails[index].brand!,
              carPrice: marutiController.carDetails[index].price!,
              carImage: marutiController.carDetails[index].image!);
        },
      );
    });
  }
}

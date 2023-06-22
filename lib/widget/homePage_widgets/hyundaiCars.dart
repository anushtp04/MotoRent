import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../controller/hyundaiCarController.dart';
import 'carListItems.dart';

class HyundaiCars extends StatelessWidget {
  HyundaiCars({super.key});
  final hyundaiController = Get.put(HyundaiCarController());


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GridView.builder(
        itemCount: hyundaiController.carDetails.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: .9),
        itemBuilder: (context, index) {
          return CarListItem(
              carName: hyundaiController.carDetails[index].name!,
              id: hyundaiController.carDetails[index].id!,
              carBrand: hyundaiController.carDetails[index].brand!,
              carPrice: hyundaiController.carDetails[index].price!,
              carImage: hyundaiController.carDetails[index].image!);
        },
      );
    });
  }
}

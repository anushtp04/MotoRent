import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../controller/fordCarController.dart';
import 'carListItems.dart';

class FordCars extends StatelessWidget {
  FordCars({super.key});

  final fordController = Get.put(FordCarController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GridView.builder(
        itemCount: fordController.carDetails.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: .9),
        itemBuilder: (context, index) {
          return CarListItem(
              id: fordController.carDetails[index].id!,
              carName: fordController.carDetails[index].name!,
              carBrand: fordController.carDetails[index].brand!,
              carPrice: fordController.carDetails[index].price!,
              carImage: fordController.carDetails[index].image!);
        },
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../controller/toyotaCarController.dart';
import 'carListItems.dart';

class ToyotaCars extends StatelessWidget {
  ToyotaCars({super.key});
  final toyoyaController = Get.put(ToyotaCarController());


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GridView.builder(
        itemCount: toyoyaController.carDetails.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: .9),
        itemBuilder: (context, index) {
          return CarListItem(
              id: toyoyaController.carDetails[index].id!,
              carName: toyoyaController.carDetails[index].name!,
              carBrand: toyoyaController.carDetails[index].brand!,
              carPrice: toyoyaController.carDetails[index].price!,
              carImage: toyoyaController.carDetails[index].image!);
        },
      );
    });
  }
}

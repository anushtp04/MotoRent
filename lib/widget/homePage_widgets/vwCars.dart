import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../controller/vWCarController.dart';
import 'carListItems.dart';

class VWCars extends StatelessWidget {
  VWCars({super.key});
  final vwController = Get.put((VWCarController()));


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GridView.builder(
        itemCount: vwController.carDetails.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: .9),
        itemBuilder: (context, index) {
          return CarListItem(
              id  : vwController.carDetails[index].id!,
              carName: vwController.carDetails[index].name!,
              carBrand: vwController.carDetails[index].brand!,
              carPrice: vwController.carDetails[index].price!,
              carImage: vwController.carDetails[index].image!);
        },
      );
    });
  }
}

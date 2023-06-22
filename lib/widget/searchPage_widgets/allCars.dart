import 'package:car_rent_new/controller/allCarController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../homePage_widgets/carListItems.dart';

class AllCars extends StatelessWidget {
  AllCars({super.key});

  final allCarController = Get.put(AllCarController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GridView.builder(
        itemCount: allCarController.carDetails.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: .9),
        itemBuilder: (context, index) {
          return CarListItem(
              id: allCarController.carDetails[index].id!,
              carName: allCarController.carDetails[index].name!,
              carBrand: allCarController.carDetails[index].brand!,
              carPrice: allCarController.carDetails[index].price!,
              carImage: allCarController.carDetails[index].image!);
        },
      );
    });
  }
}

import 'package:get/get.dart';

import '../model/carModel.dart';

class FordCarController extends GetxController {
  var carDetails = <Car>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchCarDetails();
  }

  void fetchCarDetails() async {
    Future.delayed(Duration(seconds: 2));
    var carDetailsResult = [
      Car(
          id: 6,
          name: "EcoSport",
          brand: "Ford",
          image: "assets/cars/ecosport.png",
          price: "1800",
          engineType: "Desel",
          carRenterName: "Anush",
          transmission: "Manual",
          year: "2019"),
      Car(
          id: 1,
          name: "Endavour",
          brand: "Ford",
          image: "assets/cars/endavour.png",
          price: "4200",
          engineType: "Diesel",
          carRenterName: "Anush",
          transmission: "Automatic",
          year: "2020"),
    ];
    carDetails.value = carDetailsResult;
  }
}

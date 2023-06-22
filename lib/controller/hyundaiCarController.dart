import 'package:get/get.dart';

import '../model/carModel.dart';

class HyundaiCarController extends GetxController {
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
          id: 9,
          name: "i10",
          brand: "Hyundai",
          image: "assets/cars/i10.png",
          price: "1100",
          engineType: "Petrol",
          carRenterName: "Anush",
          transmission: "Manual",
          year: "2015"),
      Car(
          id: 10,
          name: "i20",
          brand: "Hyundai",
          image: "assets/cars/i20.png",
          price: "1600",
          engineType: "Petrol",
          carRenterName: "Marshall",
          transmission: "Manual",
          year: "2022"),
      Car(
          id: 4,
          name: "Creta",
          brand: "Hyundai",
          image: "assets/cars/creta.png",
          price: "2300",
          engineType: "Diesel",
          carRenterName: "Marshall",
          transmission: "Manual",
          year: "2018"),
    ];
    carDetails.value = carDetailsResult;
  }
}

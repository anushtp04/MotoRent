import 'package:get/get.dart';

import '../model/carModel.dart';

class ToyotaCarController extends GetxController {
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
          id: 12,
          name: "Innova",
          brand: "Toyota",
          image: "assets/cars/innova.png",
          price: "2400",
          engineType: "Diesel",
          carRenterName: "Marshall",
          transmission: "Manual",
          year: "2018"),
      Car(
          id: 2,
          name: "Fortuner",
          brand: "Toyota",
          image: "assets/cars/fortuner.png",
          price: "4200",
          engineType: "Diesel",
          carRenterName: "Anush",
          transmission: "Automatic",
          year: "2017"),
    ];
    carDetails.value = carDetailsResult;
  }
}

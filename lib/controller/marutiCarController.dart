import 'package:get/get.dart';

import '../model/carModel.dart';

class MarutiCarController extends GetxController {
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
          id: 5,
          name: "Baleno",
          brand: "Maruti Suzuki",
          image: "assets/cars/baleno.png",
          price: "1500",
          engineType: "Petrol",
          carRenterName: "Marshall",
          transmission: "Manual",
          year: "2019"),
      Car(
          id: 7,
          name: "Swift",
          brand: "Maruti Suzuki",
          image: "assets/cars/swift.png",
          price: "1400",
          engineType: "Petrol",
          carRenterName: "Anush",
          transmission: "Automatic",
          year: "2022"),
      Car(
          id: 11,
          name: "Brezza",
          brand: "Maruti Suzuki",
          image: "assets/cars/brezza.png",
          price: "1700",
          engineType: "Diesel",
          carRenterName: "Marshall",
          transmission: "Automatic",
          year: "2021"),
      Car(
          id: 8,
          name: "Wagon-R",
          brand: "Maruti Suzuki",
          image: "assets/cars/wagonr.png",
          price: "1100",
          engineType: "Petrol",
          carRenterName: "Anush",
          transmission: "Manual",
          year: "2018"),
    ];
    carDetails.value = carDetailsResult;
  }
}

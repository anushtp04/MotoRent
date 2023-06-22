import 'package:get/get.dart';

import '../model/carModel.dart';

class VWCarController extends GetxController {
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
          id: 3,
          name: "Polo",
          brand: "VolksWagen",
          image: "assets/cars/polo.png",
          price: "1900",
          engineType: "Desel",
          carRenterName: "Anush",
          transmission: "Manual",
          year: "2019"),
    ];
    carDetails.value = carDetailsResult;
  }
}

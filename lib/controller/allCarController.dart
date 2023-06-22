import 'package:get/get.dart';

import '../model/carModel.dart';

class AllCarController extends GetxController {
  var carDetails = <Car>[].obs;
  var selectedDrowpdown = "1 day".obs;
  var dropDownList = [
    "1 day",
    "2 day",
    "1 week",
    "2 week",
    "1 month",
  ];
  //

  @override
  void onInit() {
    super.onInit();
    fetchCarDetails();
  }
  var selectedCarId = RxInt(0);
  void selectCar(int id){
    selectedCarId.value;
  }

  Car getSelectedCar(){
    return carDetails.firstWhere((car) => car.id == selectedCarId.value);
  }


  void fetchCarDetails() async {
    Future.delayed(Duration(seconds: 2));
    var carDetailsResult = [
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
          id: 8,
          name: "Wagon-R",
          brand: "Maruti Suzuki",
          image: "assets/cars/wagonr.png",
          price: "1100",
          engineType: "Petrol",
          carRenterName: "Anush",
          transmission: "Manual",
          year: "2018"),
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
          id: 12,
          name: "Innova",
          brand: "Toyota",
          image: "assets/cars/innova.png",
          price: "2400",
          engineType: "Diesel",
          carRenterName: "Marshall",
          transmission: "Manual",
          year: "2018"),
    ];
    carDetails.value = carDetailsResult;
  }
}

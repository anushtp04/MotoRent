import 'package:car_rent_new/controller/allCarController.dart';
import 'package:car_rent_new/pages/navPages/cart_page.dart';
import 'package:car_rent_new/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/carModel.dart';

class NextPage extends StatelessWidget {
  NextPage({super.key});

  final AllCarController carController = Get.find();

  @override
  Widget build(BuildContext context) {
    final Car selectedCar = carController.getSelectedCar();
    final carSpec = {
      "Engine Type": "${selectedCar.engineType}",
      "Transmission": "${selectedCar.transmission}",
      "Year": "${selectedCar.year}",
    };

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: RichText(
              text: TextSpan(
                  text: "Moto",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                    text: "Rent", style: TextStyle(color: Colors.blue.shade900))
              ])),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(left: 15, top: 10, bottom: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Icon(
                Icons.close,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: MediaQuery.of(context).size.height * .32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("${selectedCar.image}"))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(text: "${selectedCar.brand}", size: 17),
                                AppText(
                                    text: "${selectedCar.name}",
                                    size: 30,
                                    color: Colors.black),
                              ],
                            ),
                            RichText(
                                text: TextSpan(
                                    text: "₹${selectedCar.price}",
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.blue.shade900,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                  TextSpan(
                                      text: "/day",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500))
                                ])),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  AppText(
                      text: "Specifications", size: 20, color: Colors.black),
                  SizedBox(height: 10),
                  Container(
                    height: 55,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final entry = carSpec.entries.toList()[index];
                          final key = entry.key;
                          final value = entry.value;
                          return Container(
                            width: 120,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  text: key,
                                  size: 14,
                                ),
                                AppText(
                                    text: value, size: 17, color: Colors.black),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Container(width: 10);
                        },
                        itemCount: 3),
                  ),
                  SizedBox(height: 25),
                  AppText(text: "Car Renter", size: 20, color: Colors.black),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue.shade900,
                                radius: 25,
                                child: Text(
                                  "${selectedCar.carRenterName![0]}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              SizedBox(width: 8),
                              AppText(
                                text: "${selectedCar.carRenterName}",
                                size: 18,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white),
                              child: Icon(
                                Icons.call,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white),
                              child: Icon(
                                Icons.messenger,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  AppText(text: "Location", size: 20, color: Colors.black),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Pallikunnu, Kannur",
                          prefixIcon: Icon(
                            Icons.location_on,
                            color: Colors.blue,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 25),
                  AppText(
                      text: "Contract Period", size: 20, color: Colors.black),
                  SizedBox(height: 10),
                  Container(
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Obx(() {
                            return DropdownButton(
                              icon: Icon(
                                Icons.arrow_downward,
                                size: 20,
                                color: Colors.black,
                              ),
                              value: carController.selectedDrowpdown.value,
                              onChanged: (String? newValue) {
                                carController.selectedDrowpdown.value =
                                    newValue!;
                              },
                              items: carController.dropDownList
                                  .map((String element) {
                                return DropdownMenuItem(
                                    value: element,
                                    child: Text(
                                      element,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ));
                              }).toList(),
                            );
                          }),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: GestureDetector(
                          onTap: () {
                            Get.snackbar(
                              "Success",
                              "Successfully Added to the cart",
                              backgroundColor: Colors.green,
                              messageText: Text("Successfully Added to the cart",style: TextStyle(fontSize: 16,color: Colors.black),),
                              duration: Duration(seconds: 3),
                              isDismissible: true,
                              dismissDirection: DismissDirection.horizontal,
                              // icon: Icon(Icons.thumb_up,color: Colors.white,),
                              overlayBlur: 4
                            );
                          },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Rent - ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Obx(() {
                                  return Text(
                                    "₹${totalAmount(selectedCar)}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  int? totalAmount(Car selectedCar) {
    if (carController.selectedDrowpdown == "1 day") {
      int amount = int.parse(selectedCar.price!);
      return 1 * amount;
    } else if (carController.selectedDrowpdown == "2 day") {
      int amount = int.parse(selectedCar.price!);
      return (2 * amount) -
          (amount < 1600
              ? 300
              : amount <= 2400
                  ? 600
                  : 900);
    } else if (carController.selectedDrowpdown == "1 week") {
      int amount = int.parse(selectedCar.price!);
      return (7 * amount) - (2 * amount);
    } else if (carController.selectedDrowpdown == "2 week") {
      int amount = int.parse(selectedCar.price!);
      return (14 * amount) - (4 * amount);
    } else if (carController.selectedDrowpdown == "1 month") {
      int amount = int.parse(selectedCar.price!);
      return (30 * amount) - (12 * amount);
    }
    return null;
  }
}

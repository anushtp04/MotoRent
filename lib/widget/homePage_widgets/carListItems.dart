import 'package:car_rent_new/controller/allCarController.dart';
import 'package:car_rent_new/pages/nextPage/next_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CarListItem extends StatelessWidget {
  final String carName;
  final String carBrand;
  final String carPrice;
  final String carImage;
  final int id;

  CarListItem(
      {required this.id,
      required this.carName,
      required this.carBrand,
      required this.carPrice,
      required this.carImage});

  final AllCarController carController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        carController.selectedCarId(id);
        Get.to(NextPage());
      },
      child: Container(
        width: double.infinity,
        color: Colors.grey.shade200,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    carName,
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    carBrand,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        // child: Text("$carPrice/day",style: TextStyle(fontSize: 16),)
                        child: RichText(
                            text: TextSpan(
                                text: "₹$carPrice",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(text: "/day",style:TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500) )
                            ])),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.shade900,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 5,
              child: Image.asset(carImage),
              height: 80,
              width: 180,
            )
          ],
        ),
      ),
    );
  }
}

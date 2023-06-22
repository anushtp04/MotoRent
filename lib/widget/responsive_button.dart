import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {

  final bool? isResponsive;
  final double? width;
   ResponsiveButton({super.key, this.width,this.isResponsive});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepPurple.shade900
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.double_arrow_rounded,color: Colors.white,)
        ],
      ),
    );
  }
}

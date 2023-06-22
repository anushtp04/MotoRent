import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 50,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search any car here..",
                  prefixIcon: Icon(Icons.search),
                  alignLabelWithHint: true,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          height: 47,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.filter_list,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

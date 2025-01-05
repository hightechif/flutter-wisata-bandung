import 'package:flutter/material.dart';
import 'package:wisatabandung/tourism_place_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "Wisata Bandung. Size: ${MediaQuery.of(context).size.width}"),
        ),
        body: const TourismPlaceList());
  }
}

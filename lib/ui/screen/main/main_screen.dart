import 'package:flutter/material.dart';
import 'package:wisatabandung/ui/screen/main/tourism_place_grid.dart';
import 'package:wisatabandung/ui/screen/main/tourism_place_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Wisata Bandung",
          style: TextStyle(
            fontFamily: 'Staatliches',
            fontSize: 32,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const TourismPlaceList();
          } else if (constraints.maxWidth <= 1200) {
            return const TourismPlaceGrid(gridCount: 4);
          } else {
            return const TourismPlaceGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

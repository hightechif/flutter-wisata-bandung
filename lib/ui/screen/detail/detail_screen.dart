import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wisatabandung/model/tourism_place.dart';
import 'package:wisatabandung/ui/screen/detail/detail_mobile_page.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');
    Locale locale = const Locale("id", "ID");
    String localeID = locale.toLanguageTag().replaceAll('-', '_');
    var formatter = NumberFormat.decimalPattern(localeID);
    var ticketPrice = (place.ticketPrice == 0)
        ? "Free"
        : "${place.currency} ${formatter.format(place.ticketPrice)}";

    return DetailMobilePage(
        place: place,
        informationTextStyle: informationTextStyle,
        ticketPrice: ticketPrice);
  }
}

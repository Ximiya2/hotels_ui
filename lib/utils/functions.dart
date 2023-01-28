

import 'package:flutter_share/flutter_share.dart';
import 'package:hotels_ui/attributes.dart';

import '../models/hotel_models.dart';

List<HotelModel> searcheHotel(String searchedStr){
  searchedList.clear();

  categoryList.forEach((category) {

    category.hotels.forEach((hotel) {
      if(hotel.hotelName.toLowerCase().contains(searchedStr.toLowerCase())){
        searchedList.add(hotel);
      }
    });
  });

  return searchedList;
}

Future<void> share(String name, String url) async {
  await FlutterShare.share(
      title: name,
      text: name,
      linkUrl: url,
      chooserTitle: 'ilmhub'
  );
}
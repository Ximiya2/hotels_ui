import 'package:flutter/cupertino.dart';

import 'models/hotel_models.dart';
import 'models/product_model.dart';

List<CategoryModel> categoryList = [
  CategoryModel(
      categoryName: 'Best Hotels',
      hotels: [
        HotelModel('https://avatars.mds.yandex.net/i?id=d32367e2c9564734f74225c2558b1584964760bc-7754287-images-thumbs&n=13',
            'Uzbekiston'),
        HotelModel('https://avatars.mds.yandex.net/i?id=abf484aa00db14ffd75bf0262956fa418a0617fb-8241279-images-thumbs&n=13',
            'HILTON'),
        HotelModel(
            'https://i.pinimg.com/originals/fb/2e/4b/fb2e4b40ce3f441575cd266348728ef5.jpg',
            'Coziness.'),
      ]),
  CategoryModel(
      categoryName: 'Luxury Hotels',
      hotels: [
    HotelModel('https://hotels.sletat.ru/i/f/103145_0.jpg',
        'AvHouse.'),
    HotelModel(
        'https://ak-d.tripcdn.com/images/22090f0000007kt4e1864.jpg',
        'O\'Hostel'),
    HotelModel(
        'https://i.pinimg.com/originals/fb/2e/4b/fb2e4b40ce3f441575cd266348728ef5.jpg',
        'Mega Polis Hostel'),
  ]),
  CategoryModel(
      categoryName: 'Expensive Hotels',
      hotels: [
    HotelModel('https://hotels.sletat.ru/i/f/103145_0.jpg',
        'Wyndham grand'),
    HotelModel(
        'https://ak-d.tripcdn.com/images/22090f0000007kt4e1864.jpg', 'HILTON'),
    HotelModel(
        'https://i.pinimg.com/originals/fb/2e/4b/fb2e4b40ce3f441575cd266348728ef5.jpg',
        'Kempinski'),
  ]),
];

List<HotelModel> searchedList = [

];
var editCtr = TextEditingController();
int editIndex = 0;

// import 'package:hotels_ui/models/hotel_models.dart';
//
// List<CategoryModel> categorylist = [
//     CategoryModel(
//       categoryName: 'Best Hotels',
//       hotels: [
//         HotelModel('https://avatars.mds.yandex.net/i?id=d32367e2c9564734f74225c2558b1584964760bc-7754287-images-thumbs&n=13', 'Wyndham grand'),
//         HotelModel('https://avatars.mds.yandex.net/i?id=abf484aa00db14ffd75bf0262956fa418a0617fb-8241279-images-thumbs&n=13', 'Hilton'),
//         HotelModel('https://avatars.mds.yandex.net/i?id=af3712b95371c6892455e713b1d635c67b47a2fc-4012775-images-thumbs&n=13', 'hotel'),
//       ],
//     ),
//   CategoryModel(
//     categoryName: 'Luxury Hotels',
//     hotels: [
//       HotelModel('https://avatars.mds.yandex.net/i?id=d32367e2c9564734f74225c2558b1584964760bc-7754287-images-thumbs&n=13', 'Wyndham grand'),
//       HotelModel('https://avatars.mds.yandex.net/i?id=abf484aa00db14ffd75bf0262956fa418a0617fb-8241279-images-thumbs&n=13', 'Hilton'),
//       HotelModel('https://avatars.mds.yandex.net/i?id=af3712b95371c6892455e713b1d635c67b47a2fc-4012775-images-thumbs&n=13', 'horel'),
//     ],
//   ),
//
// ];

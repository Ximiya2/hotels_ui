import 'package:flutter/material.dart';

Widget productItem(
    {required BuildContext context,
      required String image }) {
  return InkWell(
    onTap: (){},
    child: Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      height: MediaQuery.of(context).size.height * 0.30,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            ),
          )),
    ),
  );
}
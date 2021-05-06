import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Angelice", country: "Russian", price: 440),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(children: <Widget>[
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: TextButton(
                onPressed: () {},
                child: Text("Buy Now",
                    style: TextStyle(
                      fontSize: 16,
                    )),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Text("Description",
                    style: TextStyle(
                      fontSize: 16,
                    )),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  primary: Colors.black,
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}

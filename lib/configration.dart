
import 'package:flutter/material.dart';

Color backgroundcolor = const Color(0xffF2F2F2);
Color primarycolor = Colors.black;
Color boxcolor = Colors.white;
Color textcolor1 = const Color(0xffADADAD);

appbar(String title1, String title2) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: 50,
            padding: EdgeInsets.all(10),
            child: Image.asset("images/logo.png")),
        Text(
          title1,
          style: logotext,
        ),
        Text(
          title2,
          style: logotext2,
        ),
      ],
    ),
    actions: [
      Icon(
        Icons.search,
        color: primarycolor,
      ),
      const SizedBox(
        width: 5,
      )
    ],
  );
}

Widget listtile(String text, String text2) {
  return ListTile(
    tileColor: Colors.white,
    leading: Text(
      text,
      style: listtext,
    ),
    trailing: Text(
      text2,
      style: logotext2,
    ),
  );
}

final logotext =
    TextStyle(color: primarycolor, fontSize: 14, fontWeight: FontWeight.bold);
final logotext2 = TextStyle(
  color: textcolor1,
  fontSize: 16,
);
final listtext = TextStyle(
  color: primarycolor,
  fontSize: 24,
  fontWeight: FontWeight.w900,
);
const context1 = TextStyle(
  color: Color(0xff4B545C),
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
final context2 = TextStyle(
  color: textcolor1,
  fontSize: 12,
);
const context3 = TextStyle(
  color: Color(0xff303E47),
  fontSize: 30,
  fontWeight: FontWeight.w900,
);

Widget shoecontainer(
    String img, String shoesname, String gender, String price) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: shadowlist),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: 170,
              child: Image.asset(img),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoesname,
                    style: context1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    gender,
                    style: context2,
                  ),
                  star(),
                  Text(
                    price,
                    style: context3,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Positioned(
          bottom: -10,
          right: 0,
          child: FloatingActionButton(
            backgroundColor: Colors.yellow[800],
            onPressed: () {},
            child: Icon(
              Icons.shopping_bag_sharp,
              color: primarycolor,
            ),
          ))
    ],
  );
}

List<BoxShadow> shadowlist = [
  BoxShadow(
      color: Colors.grey.shade300, blurRadius: 30, offset: const Offset(0, 10)),
];

Widget star() {
  return Row(
    children: [
      icon(),
      icon(),
      icon(),
      icon(),
      icon(),
    ],
  );
}

Widget icon() {
  return Icon(
    Icons.star,
    color: primarycolor,
    size: 20,
  );
}

Widget bottombar() {
  return BottomAppBar(
    color: Colors.white,
    child: Stack(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.home,
                color: iconcolor,
              ),
              Icon(
                Icons.view_comfortable_rounded,
                color: iconcolor,
              ),
              Icon(
                Icons.card_travel,
                color: iconcolor,
              ),
              Icon(
                Icons.person_sharp,
                color: iconcolor,
              ),
              Icon(
                Icons.more_horiz,
                color: iconcolor,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

final iconcolor = Colors.yellow[800];
final bottomtext = TextStyle(
  color: Colors.yellow[800],
  fontSize: 14,
  fontWeight: FontWeight.bold,
);
List<Map> categories = [
  {'name': 'Home', 'iconPath': 'images/4.png'},
  {'name': 'Catalog', 'iconPath': 'images/5.png'},
  {'name': 'Bag', 'iconPath': 'images/6.png'},
  {'name': 'Profile', 'iconPath': 'images/7.png'},
  {'name': 'More', 'iconPath': 'images/8.png'},
];



import 'package:flutter/material.dart';

Color backgroundcolor = const Color(0xffF2F2F2);
Color primarycolor = Colors.black;
Color textcolor1 = const Color(0xffADADAD);

appbar(String title1, String title2) {
  return AppBar(
    backgroundColor: backgroundcolor,
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

Widget container() {
  return Container(
    width: 500,
    decoration: BoxShadow(
      
    ),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
Row(
    children: [
      container(
        
      )
    ],
)

      ],
    ),
  );
}

import 'package:flutter/material.dart';
import 'diag1.dart';
import '/ui/global/btn.dart' as globalBtn;
import '../rail/navigationPage.dart' as navigationPage;

Widget dialog1(double size, BuildContext context) {
  return Container(
    height: 80,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            child: globalBtn.btnText(Colors.transparent, Colors.black, 15, 1,
                Colors.black, Text('diag 1'), () {
              Widget body = Container(
                color: Colors.white,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          iconSize: 80,
                          onPressed: () {},
                          icon: Icon(
                            Icons.alarm,
                            size: 80,
                          )),
                      Text('Body'),
                    ],
                  ),
                ),
              );
              List<Widget> footer = [
                Text('Footer'),
                IconButton(
                    splashRadius: size * 3,
                    onPressed: () {},
                    icon: Icon(Icons.alarm, size: size * 5)),
                IconButton(
                    splashRadius: size * 3,
                    onPressed: () {},
                    icon: Icon(Icons.alarm_add, size: size * 5)),
                IconButton(
                    splashRadius: size * 3,
                    onPressed: () {},
                    icon: Icon(Icons.alarm_off, size: size * 5)),
                IconButton(
                    splashRadius: size * 3,
                    onPressed: () {},
                    icon: Icon(Icons.alarm_on, size: size * 5)),
              ];
              navigationPage.btnSelectedInt = 0;
              navigationPage.btnSelectedStream.add(0);
              return dialogHeaderBodyFooter(
                  context,
                  Theme.of(context).primaryColor,
                  Text(
                    'HEADER',
                    style: TextStyle(color: Colors.white),
                  ),
                  Colors.white,
                  body,
                  footer,
                  250,
                  350);
            }),
          ),
        ],
      ),
    ),
  );
}

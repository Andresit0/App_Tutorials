import 'package:flutter/material.dart';
import 'dotIndicator.dart';

Widget pageView(List<Widget> pages) {
  final _controller = new PageController();
  const _kDuration = const Duration(milliseconds: 300);
  const _kCurve = Curves.ease;

  return IconTheme(
    data: new IconThemeData(color: Colors.black),
    child: new Stack(
      children: <Widget>[
        new PageView.builder(
          physics: new AlwaysScrollableScrollPhysics(),
          controller: _controller,
          itemBuilder: (BuildContext context, int index) {
            return pages[index % pages.length];
          },
        ),
        new Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: new Container(
            color: Colors.grey[800],
            padding: const EdgeInsets.all(20.0),
            child: new Center(
              child: new DotsIndicator(
                controller: _controller,
                itemCount: pages.length,
                onPageSelected: (int page) {
                  _controller.animateToPage(
                    page,
                    duration: _kDuration,
                    curve: _kCurve,
                  );
                },
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

import 'dart:async';
import 'package:flutter/material.dart';
import '/ui/global/listBtnAppColor.dart';

StreamController<MaterialColor> btnIconStreamBtnBackground =
    StreamController.broadcast();
StreamController<MaterialColor> btnIconStreamClickColor =
    StreamController.broadcast();
StreamController<MaterialColor> btnIconStreamIconColor =
    StreamController.broadcast();
StreamController<MaterialColor> btnIconStreamBorderColor =
    StreamController.broadcast();
TextEditingController btnIconControllerIconSize = new TextEditingController();
StreamController<double> btnIconSize = StreamController.broadcast();
TextEditingController btnIconControllerBorderRadious =
    new TextEditingController();
StreamController<double> btnIconBorderRadious = StreamController.broadcast();
TextEditingController btnIconControllerBorderWidth =
    new TextEditingController();
StreamController<double> btnIconBorderWidth = StreamController.broadcast();

TextEditingController btnIconWidth = TextEditingController();
StreamController<double> btnIconStreamWidth = StreamController.broadcast();

TextEditingController btnIconHeight = TextEditingController();
StreamController<double> btnIconStreamHeight = StreamController.broadcast();

final _formKey = GlobalKey<FormState>();
final FocusNode focusWidth = FocusNode();
final FocusNode focusHeight = FocusNode();
final FocusNode focusIconSize = FocusNode();
final FocusNode focusBorderRadious = FocusNode();
final FocusNode focusBorderWidth = FocusNode();
final FocusNode focusIconBoolBorderColor = FocusNode();

Widget btnIcon(BuildContext context) {
  return Container(
    alignment: Alignment.topLeft,
    child: Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 30,
              child: Row(
                children: [
                  Container(
                    width: 160,
                    child: Text("double widthBtn: "),
                  ),
                  Expanded(
                    child: TextFormField(
                      autofocus: true,
                      controller: btnIconWidth,
                      focusNode: focusWidth,
                      keyboardType: TextInputType.numberWithOptions(),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(focusHeight);
                      },
                      onChanged: (value) {
                        btnIconStreamWidth.add(double.parse(value));
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '70',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              child: Row(
                children: [
                  Container(
                    width: 160,
                    child: Text("double heightBtn: "),
                  ),
                  Expanded(
                    child: TextFormField(
                      autofocus: true,
                      controller: btnIconHeight,
                      focusNode: focusHeight,
                      keyboardType: TextInputType.numberWithOptions(),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(focusIconSize);
                      },
                      onChanged: (value) {
                        btnIconStreamHeight.add(double.parse(value));
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '70',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              child: Row(
                children: [
                  Container(
                    width: 160,
                    child: Text("double borderRadious: "),
                  ),
                  Expanded(
                    child: TextFormField(
                      autofocus: true,
                      controller: btnIconControllerBorderRadious,
                      focusNode: focusBorderRadious,
                      keyboardType: TextInputType.numberWithOptions(),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(focusBorderWidth);
                      },
                      onChanged: (value) {
                        btnIconBorderRadious.add(double.parse(value));
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '30',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              child: Row(
                children: [
                  Container(
                    width: 160,
                    child: Text("double borderWidth: "),
                  ),
                  Expanded(
                    child: TextFormField(
                      autofocus: true,
                      controller: btnIconControllerBorderWidth,
                      focusNode: focusBorderWidth,
                      keyboardType: TextInputType.numberWithOptions(),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (v) {
                        FocusScope.of(context)
                            .requestFocus(focusIconBoolBorderColor);
                      },
                      onChanged: (value) {
                        btnIconBorderWidth.add(double.parse(value));
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '2',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 45,
              child: Row(
                children: [
                  Container(
                    width: 160,
                    child: Text("Color btnBackground: "),
                  ),
                  Expanded(
                    child: Container(
                      child: listSpecificColorButton(
                          40, btnIconStreamBtnBackground),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 45,
              child: Row(
                children: [
                  Container(
                    width: 160,
                    child: Text("Color clickColor: "),
                  ),
                  Expanded(
                    child: Container(
                      child:
                          listSpecificColorButton(40, btnIconStreamClickColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 45,
              child: Row(
                children: [
                  Container(
                    width: 160,
                    child: Text("Color iconColor: "),
                  ),
                  Expanded(
                    child: Container(
                      child:
                          listSpecificColorButton(40, btnIconStreamIconColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 45,
              child: Row(
                children: [
                  Container(
                    width: 160,
                    child: Text("Color borderColor: "),
                  ),
                  Expanded(
                    child: Container(
                      child:
                          listSpecificColorButton(40, btnIconStreamBorderColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:temp_btn_color_dialog_font/ui/global/listBtnAppColor.dart';

StreamController<MaterialColor> btnTextStreamBtnBackground =
    StreamController.broadcast();
StreamController<MaterialColor> btnTextStreamClickColor =
    StreamController.broadcast();
StreamController<MaterialColor> btnTextStreamBorderColor =
    StreamController.broadcast();
StreamController<MaterialColor> btnTextStreamTextColor =
    StreamController.broadcast();

TextEditingController btnTextControllerBorderRadious = TextEditingController();
StreamController<double> btnTextStreamBorderRadious =
    StreamController.broadcast();

TextEditingController btnTextControllerBorderWidth = TextEditingController();
StreamController<double> btnTextStreamBorderWidth =
    StreamController.broadcast();

TextEditingController btnTextWidth = TextEditingController();
StreamController<double> btnTextStreamWidth = StreamController.broadcast();

TextEditingController btnTextHeight = TextEditingController();
StreamController<double> btnTextStreamHeight = StreamController.broadcast();

TextEditingController btnTextFontSize = TextEditingController();
StreamController<double> btnTextStreamFontSize = StreamController.broadcast();

final _formKey = GlobalKey<FormState>();
final FocusNode focusWidth = FocusNode();
final FocusNode focusHeight = FocusNode();
final FocusNode focusFontSize = FocusNode();
final FocusNode focusBorderRadious = FocusNode();
final FocusNode focusBorderWidth = FocusNode();
final FocusNode focusIconBoolBorderColor = FocusNode();

Widget btnText(BuildContext context) {
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
                      controller: btnTextWidth,
                      focusNode: focusWidth,
                      keyboardType: TextInputType.numberWithOptions(),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(focusHeight);
                      },
                      onChanged: (value) {
                        btnTextStreamWidth.add(double.parse(value));
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
                      controller: btnTextHeight,
                      focusNode: focusHeight,
                      keyboardType: TextInputType.numberWithOptions(),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(focusFontSize);
                      },
                      onChanged: (value) {
                        btnTextStreamHeight.add(double.parse(value));
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
                    child: Text("double textFontSize: "),
                  ),
                  Expanded(
                    child: TextFormField(
                      autofocus: true,
                      controller: btnTextFontSize,
                      focusNode: focusFontSize,
                      keyboardType: TextInputType.numberWithOptions(),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(focusBorderRadious);
                      },
                      onChanged: (value) {
                        btnTextStreamFontSize.add(double.parse(value));
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '15',
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
                      controller: btnTextControllerBorderRadious,
                      focusNode: focusBorderRadious,
                      keyboardType: TextInputType.numberWithOptions(),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(focusBorderWidth);
                      },
                      onChanged: (value) {
                        btnTextStreamBorderRadious.add(double.parse(value));
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '20',
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
                      controller: btnTextControllerBorderWidth,
                      focusNode: focusBorderWidth,
                      keyboardType: TextInputType.numberWithOptions(),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (v) {
                        FocusScope.of(context)
                            .requestFocus(focusIconBoolBorderColor);
                      },
                      onChanged: (value) {
                        btnTextStreamBorderWidth.add(double.parse(value));
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
                          40, btnTextStreamBtnBackground),
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
                          listSpecificColorButton(40, btnTextStreamClickColor),
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
                    child: Text("Color textColor: "),
                  ),
                  Expanded(
                    child: Container(
                      child:
                          listSpecificColorButton(40, btnTextStreamTextColor),
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
                          listSpecificColorButton(40, btnTextStreamBorderColor),
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

import 'package:flutter/material.dart';
import '/ui/global/btn.dart' as globalBtn;
import '/ui/img/icon/icon_downloaded.dart' as globalIconDown;
import '../global/func.dart' as globalFunc;
import '../global/var.dart' as globalVar;

Widget btnApp(
    double sizeFunction, String imgPath, double imgSize, List<Widget> listBtn) {
  return Container(
    alignment: Alignment.topCenter,
    width: sizeFunction * imgSize,
    height: sizeFunction * imgSize,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.fitHeight),
    ),
    child: Transform.translate(
      offset: Offset(0, sizeFunction * 1.5),
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: sizeFunction * imgSize,
          height: sizeFunction * imgSize,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: listBtn,
          ),
        ),
      ),
    ),
  );
}

Widget factec(double sizeFunction, BuildContext context) {
  return Container(
    child: Row(
      children: [
        btnApp(sizeFunction, globalVar.imgFactecApp, 20, [
          globalBtn.btnIconCircle(
              sizeFunction * 11,
              sizeFunction * 6,
              true,
              Colors.black,
              globalIconDown.IconDownloaded.google_play,
              context, () {
            globalFunc.openAWeb(
                "https://play.google.com/store/apps/details?id=com.factec_free.facturaciontecnologica&hl=es_EC&gl=US");
          }),
        ]),
      ],
    ),
  );
}

Widget hablaAndrea(double sizeFunction, BuildContext context) {
  return Container(
    child: Row(
      children: [
        btnApp(sizeFunction, globalVar.imgHablaAndreaApp, 20, [
          globalBtn.btnIconCircle(
              sizeFunction * 11,
              sizeFunction * 6,
              true,
              Colors.black,
              globalIconDown.IconDownloaded.google_play,
              context, () {
            globalFunc.openAWeb(
                "https://play.google.com/store/apps/details?id=com.voice.habla_andrea");
          }),
        ]),
      ],
    ),
  );
}

Widget mubicate(double sizeFunction, BuildContext context) {
  return Container(
    child: Row(
      children: [
        btnApp(sizeFunction, globalVar.imgMubicateApp, 21, [
          globalBtn.btnIconCircle(
              sizeFunction * 11,
              sizeFunction * 6,
              true,
              Colors.black,
              globalIconDown.IconDownloaded.google_play,
              context, () {
            globalFunc.openAWeb(
                "https://play.google.com/store/apps/details?id=com.mubicate.mubicate");
          }),
        ]),
      ],
    ),
  );
}

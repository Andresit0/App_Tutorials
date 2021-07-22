import 'package:flutter/material.dart';
import '../rail/navigationPage.dart' as navigationPage;
import '../rail/editBtnText.dart' as editBtnText;
import '../rail/editBtnIcon.dart' as editBtnIcon;
import '../rail/editBtnIconLTextR.dart' as editBtnIconLTextR;
import '../rail/editBtnIconUTextD.dart' as editBtnIconUTextD;
import '../rail/editBtnTextLIconR.dart' as editBtnTextLIconR;
import '../rail/editBtnTextUIconD.dart' as editBtnTextUIconD;
import 'btnList.dart' as btnList;

Widget btnText(BuildContext context) {
  return StreamBuilder(
      initialData: 70.0,
      stream: editBtnText.btnTextStreamWidth.stream,
      builder: (_, AsyncSnapshot snapshot8) {
        return StreamBuilder(
            initialData: 70.0,
            stream: editBtnText.btnTextStreamHeight.stream,
            builder: (_, AsyncSnapshot snapshot9) {
              return Container(
                width: snapshot8.data,
                height: snapshot9.data,
                child: StreamBuilder(
                    initialData: Colors.transparent,
                    stream: editBtnText.btnTextStreamBtnBackground.stream,
                    builder: (_, AsyncSnapshot snapshot1) {
                      return StreamBuilder(
                          initialData: Colors.black,
                          stream: editBtnText.btnTextStreamClickColor.stream,
                          builder: (_, AsyncSnapshot snapshot2) {
                            return StreamBuilder(
                                initialData: 20.0,
                                stream: editBtnText
                                    .btnTextStreamBorderRadious.stream,
                                builder: (_, AsyncSnapshot snapshot3) {
                                  return StreamBuilder(
                                      initialData: 2.0,
                                      stream: editBtnText
                                          .btnTextStreamBorderWidth.stream,
                                      builder: (_, AsyncSnapshot snapshot4) {
                                        return StreamBuilder(
                                            initialData: Colors.black,
                                            stream: editBtnText
                                                .btnTextStreamBorderColor
                                                .stream,
                                            builder:
                                                (_, AsyncSnapshot snapshot5) {
                                              return StreamBuilder(
                                                  initialData: Colors.black,
                                                  stream: editBtnText
                                                      .btnTextStreamTextColor
                                                      .stream,
                                                  builder: (_,
                                                      AsyncSnapshot snapshot6) {
                                                    return StreamBuilder(
                                                        initialData: 15.0,
                                                        stream: editBtnText
                                                            .btnTextStreamFontSize
                                                            .stream,
                                                        builder: (_,
                                                            AsyncSnapshot
                                                                snapshot7) {
                                                          return btnList
                                                              .btnText(
                                                                  snapshot1
                                                                      .data,
                                                                  snapshot2
                                                                      .data,
                                                                  snapshot3
                                                                      .data,
                                                                  snapshot4
                                                                      .data,
                                                                  snapshot5
                                                                      .data,
                                                                  Text(
                                                                    'text',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            snapshot7
                                                                                .data,
                                                                        color: snapshot6
                                                                            .data),
                                                                  ), () {
                                                            navigationPage
                                                                .btnSelectedInt = 0;
                                                            navigationPage
                                                                .btnSelectedStream
                                                                .add(0);
                                                          });
                                                        });
                                                  });
                                            });
                                      });
                                });
                          });
                    }),
              );
            });
      });
}

Widget btnIcon(BuildContext context) {
  return StreamBuilder(
      initialData: 70.0,
      stream: editBtnIcon.btnIconStreamWidth.stream,
      builder: (_, AsyncSnapshot snapshot8) {
        return StreamBuilder(
            initialData: 70.0,
            stream: editBtnIcon.btnIconStreamHeight.stream,
            builder: (_, AsyncSnapshot snapshot9) {
              return Container(
                width: snapshot8.data,
                height: snapshot9.data,
                child: StreamBuilder(
                    initialData: Colors.transparent,
                    stream: editBtnIcon.btnIconStreamBtnBackground.stream,
                    builder: (_, AsyncSnapshot snapshot1) {
                      return StreamBuilder(
                          initialData: Colors.black,
                          stream: editBtnIcon.btnIconStreamClickColor.stream,
                          builder: (_, AsyncSnapshot snapshot2) {
                            return StreamBuilder(
                                initialData: Colors.black,
                                stream:
                                    editBtnIcon.btnIconStreamIconColor.stream,
                                builder: (_, AsyncSnapshot snapshot3) {
                                  return StreamBuilder(
                                      initialData: Colors.black,
                                      stream: editBtnIcon
                                          .btnIconStreamBorderColor.stream,
                                      builder: (_, AsyncSnapshot snapshot4) {
                                        return StreamBuilder(
                                            initialData: 20.0,
                                            stream:
                                                editBtnIcon.btnIconSize.stream,
                                            builder:
                                                (_, AsyncSnapshot snapshot5) {
                                              return StreamBuilder(
                                                  initialData: 30.0,
                                                  stream: editBtnIcon
                                                      .btnIconBorderRadious
                                                      .stream,
                                                  builder: (_,
                                                      AsyncSnapshot snapshot6) {
                                                    return StreamBuilder(
                                                        initialData: 2.0,
                                                        stream: editBtnIcon
                                                            .btnIconBorderWidth
                                                            .stream,
                                                        builder: (_,
                                                            AsyncSnapshot
                                                                snapshot7) {
                                                          return btnList
                                                              .btnIcon(
                                                                  snapshot1
                                                                      .data,
                                                                  snapshot2
                                                                      .data,
                                                                  snapshot3
                                                                      .data,
                                                                  snapshot5
                                                                      .data,
                                                                  snapshot6
                                                                      .data,
                                                                  snapshot7
                                                                      .data,
                                                                  snapshot4
                                                                      .data,
                                                                  Icons.alarm,
                                                                  () {
                                                            navigationPage
                                                                .btnSelectedInt = 1;
                                                            navigationPage
                                                                .btnSelectedStream
                                                                .add(1);
                                                          });
                                                        });
                                                  });
                                            });
                                      });
                                });
                          });
                    }),
              );
            });
      });
}

Widget btnIconLTextR(BuildContext context) {
  return StreamBuilder(
      initialData: 70.0,
      stream: editBtnIconLTextR.btnIconStreamWidth.stream,
      builder: (_, AsyncSnapshot snapshot8) {
        return StreamBuilder(
            initialData: 70.0,
            stream: editBtnIconLTextR.btnIconStreamHeight.stream,
            builder: (_, AsyncSnapshot snapshot9) {
              return Container(
                width: snapshot8.data,
                height: snapshot9.data,
                child: StreamBuilder(
                    initialData: Colors.transparent,
                    stream: editBtnIconLTextR.btnIconStreamBtnBackground.stream,
                    builder: (_, AsyncSnapshot snapshot1) {
                      return StreamBuilder(
                          initialData: Colors.black,
                          stream:
                              editBtnIconLTextR.btnIconStreamClickColor.stream,
                          builder: (_, AsyncSnapshot snapshot2) {
                            return StreamBuilder(
                                initialData: Colors.black,
                                stream: editBtnIconLTextR
                                    .btnIconStreamIconColor.stream,
                                builder: (_, AsyncSnapshot snapshot3) {
                                  return StreamBuilder(
                                      initialData: Colors.black,
                                      stream: editBtnIconLTextR
                                          .btnIconStreamBorderColor.stream,
                                      builder: (_, AsyncSnapshot snapshot4) {
                                        return StreamBuilder(
                                            initialData: 20.0,
                                            stream: editBtnIconLTextR
                                                .btnIconSize.stream,
                                            builder:
                                                (_, AsyncSnapshot snapshot5) {
                                              return StreamBuilder(
                                                  initialData: 30.0,
                                                  stream: editBtnIconLTextR
                                                      .btnIconBorderRadious
                                                      .stream,
                                                  builder: (_,
                                                      AsyncSnapshot snapshot6) {
                                                    return StreamBuilder(
                                                        initialData: 2.0,
                                                        stream: editBtnIconLTextR
                                                            .btnIconBorderWidth
                                                            .stream,
                                                        builder: (_,
                                                            AsyncSnapshot
                                                                snapshot7) {
                                                          return btnList
                                                              .btnIconLTextR(
                                                                  snapshot1
                                                                      .data,
                                                                  EdgeInsets
                                                                      .zero,
                                                                  snapshot2
                                                                      .data,
                                                                  snapshot3
                                                                      .data,
                                                                  snapshot5
                                                                      .data,
                                                                  snapshot6
                                                                      .data,
                                                                  snapshot7
                                                                      .data,
                                                                  snapshot4
                                                                      .data,
                                                                  Icons.alarm,
                                                                  Text('click'),
                                                                  () {
                                                            navigationPage
                                                                .btnSelectedInt = 2;
                                                            navigationPage
                                                                .btnSelectedStream
                                                                .add(2);
                                                          });
                                                        });
                                                  });
                                            });
                                      });
                                });
                          });
                    }),
              );
            });
      });
}

Widget btnIconUTextD(BuildContext context) {
  return StreamBuilder(
      initialData: 70.0,
      stream: editBtnIconUTextD.btnIconStreamWidth.stream,
      builder: (_, AsyncSnapshot snapshot8) {
        return StreamBuilder(
            initialData: 70.0,
            stream: editBtnIconUTextD.btnIconStreamHeight.stream,
            builder: (_, AsyncSnapshot snapshot9) {
              return Container(
                width: snapshot8.data,
                height: snapshot9.data,
                child: StreamBuilder(
                    initialData: Colors.transparent,
                    stream: editBtnIconUTextD.btnIconStreamBtnBackground.stream,
                    builder: (_, AsyncSnapshot snapshot1) {
                      return StreamBuilder(
                          initialData: Colors.black,
                          stream:
                              editBtnIconUTextD.btnIconStreamClickColor.stream,
                          builder: (_, AsyncSnapshot snapshot2) {
                            return StreamBuilder(
                                initialData: Colors.black,
                                stream: editBtnIconUTextD
                                    .btnIconStreamIconColor.stream,
                                builder: (_, AsyncSnapshot snapshot3) {
                                  return StreamBuilder(
                                      initialData: Colors.black,
                                      stream: editBtnIconUTextD
                                          .btnIconStreamBorderColor.stream,
                                      builder: (_, AsyncSnapshot snapshot4) {
                                        return StreamBuilder(
                                            initialData: 20.0,
                                            stream: editBtnIconUTextD
                                                .btnIconSize.stream,
                                            builder:
                                                (_, AsyncSnapshot snapshot5) {
                                              return StreamBuilder(
                                                  initialData: 30.0,
                                                  stream: editBtnIconUTextD
                                                      .btnIconBorderRadious
                                                      .stream,
                                                  builder: (_,
                                                      AsyncSnapshot snapshot6) {
                                                    return StreamBuilder(
                                                        initialData: 2.0,
                                                        stream: editBtnIconUTextD
                                                            .btnIconBorderWidth
                                                            .stream,
                                                        builder: (_,
                                                            AsyncSnapshot
                                                                snapshot7) {
                                                          return btnList
                                                              .btnIconUTextD(
                                                                  snapshot1
                                                                      .data,
                                                                  EdgeInsets
                                                                      .zero,
                                                                  snapshot2
                                                                      .data,
                                                                  snapshot3
                                                                      .data,
                                                                  snapshot5
                                                                      .data,
                                                                  snapshot6
                                                                      .data,
                                                                  snapshot7
                                                                      .data,
                                                                  snapshot4
                                                                      .data,
                                                                  Icons.alarm,
                                                                  Text('click'),
                                                                  () {
                                                            navigationPage
                                                                .btnSelectedInt = 3;
                                                            navigationPage
                                                                .btnSelectedStream
                                                                .add(3);
                                                          });
                                                        });
                                                  });
                                            });
                                      });
                                });
                          });
                    }),
              );
            });
      });
}

Widget btnTextLIconR(BuildContext context) {
  return StreamBuilder(
      initialData: 70.0,
      stream: editBtnTextLIconR.btnIconStreamWidth.stream,
      builder: (_, AsyncSnapshot snapshot8) {
        return StreamBuilder(
            initialData: 70.0,
            stream: editBtnTextLIconR.btnIconStreamHeight.stream,
            builder: (_, AsyncSnapshot snapshot9) {
              return Container(
                width: snapshot8.data,
                height: snapshot9.data,
                child: StreamBuilder(
                    initialData: Colors.transparent,
                    stream: editBtnTextLIconR.btnIconStreamBtnBackground.stream,
                    builder: (_, AsyncSnapshot snapshot1) {
                      return StreamBuilder(
                          initialData: Colors.black,
                          stream:
                              editBtnTextLIconR.btnIconStreamClickColor.stream,
                          builder: (_, AsyncSnapshot snapshot2) {
                            return StreamBuilder(
                                initialData: Colors.black,
                                stream: editBtnTextLIconR
                                    .btnIconStreamIconColor.stream,
                                builder: (_, AsyncSnapshot snapshot3) {
                                  return StreamBuilder(
                                      initialData: Colors.black,
                                      stream: editBtnTextLIconR
                                          .btnIconStreamBorderColor.stream,
                                      builder: (_, AsyncSnapshot snapshot4) {
                                        return StreamBuilder(
                                            initialData: 20.0,
                                            stream: editBtnTextLIconR
                                                .btnIconSize.stream,
                                            builder:
                                                (_, AsyncSnapshot snapshot5) {
                                              return StreamBuilder(
                                                  initialData: 30.0,
                                                  stream: editBtnTextLIconR
                                                      .btnIconBorderRadious
                                                      .stream,
                                                  builder: (_,
                                                      AsyncSnapshot snapshot6) {
                                                    return StreamBuilder(
                                                        initialData: 2.0,
                                                        stream: editBtnTextLIconR
                                                            .btnIconBorderWidth
                                                            .stream,
                                                        builder: (_,
                                                            AsyncSnapshot
                                                                snapshot7) {
                                                          return btnList
                                                              .btnTextLIconR(
                                                                  snapshot1
                                                                      .data,
                                                                  EdgeInsets
                                                                      .zero,
                                                                  snapshot2
                                                                      .data,
                                                                  snapshot3
                                                                      .data,
                                                                  snapshot5
                                                                      .data,
                                                                  snapshot6
                                                                      .data,
                                                                  snapshot7
                                                                      .data,
                                                                  snapshot4
                                                                      .data,
                                                                  Icons.alarm,
                                                                  Text('click'),
                                                                  () {
                                                            navigationPage
                                                                .btnSelectedInt = 4;
                                                            navigationPage
                                                                .btnSelectedStream
                                                                .add(4);
                                                          });
                                                        });
                                                  });
                                            });
                                      });
                                });
                          });
                    }),
              );
            });
      });
}

Widget btnTextUIconD(BuildContext context) {
  return StreamBuilder(
      initialData: 70.0,
      stream: editBtnTextUIconD.btnIconStreamWidth.stream,
      builder: (_, AsyncSnapshot snapshot8) {
        return StreamBuilder(
            initialData: 70.0,
            stream: editBtnTextUIconD.btnIconStreamHeight.stream,
            builder: (_, AsyncSnapshot snapshot9) {
              return Container(
                width: snapshot8.data,
                height: snapshot9.data,
                child: StreamBuilder(
                    initialData: Colors.transparent,
                    stream: editBtnTextUIconD.btnIconStreamBtnBackground.stream,
                    builder: (_, AsyncSnapshot snapshot1) {
                      return StreamBuilder(
                          initialData: Colors.black,
                          stream:
                              editBtnTextUIconD.btnIconStreamClickColor.stream,
                          builder: (_, AsyncSnapshot snapshot2) {
                            return StreamBuilder(
                                initialData: Colors.black,
                                stream: editBtnTextUIconD
                                    .btnIconStreamIconColor.stream,
                                builder: (_, AsyncSnapshot snapshot3) {
                                  return StreamBuilder(
                                      initialData: Colors.black,
                                      stream: editBtnTextUIconD
                                          .btnIconStreamBorderColor.stream,
                                      builder: (_, AsyncSnapshot snapshot4) {
                                        return StreamBuilder(
                                            initialData: 20.0,
                                            stream: editBtnTextUIconD
                                                .btnIconSize.stream,
                                            builder:
                                                (_, AsyncSnapshot snapshot5) {
                                              return StreamBuilder(
                                                  initialData: 30.0,
                                                  stream: editBtnTextUIconD
                                                      .btnIconBorderRadious
                                                      .stream,
                                                  builder: (_,
                                                      AsyncSnapshot snapshot6) {
                                                    return StreamBuilder(
                                                        initialData: 2.0,
                                                        stream: editBtnTextUIconD
                                                            .btnIconBorderWidth
                                                            .stream,
                                                        builder: (_,
                                                            AsyncSnapshot
                                                                snapshot7) {
                                                          return btnList
                                                              .btnTextUIconD(
                                                                  snapshot1
                                                                      .data,
                                                                  EdgeInsets
                                                                      .zero,
                                                                  snapshot2
                                                                      .data,
                                                                  snapshot3
                                                                      .data,
                                                                  snapshot5
                                                                      .data,
                                                                  snapshot6
                                                                      .data,
                                                                  snapshot7
                                                                      .data,
                                                                  snapshot4
                                                                      .data,
                                                                  Icons.alarm,
                                                                  Text('click'),
                                                                  () {
                                                            navigationPage
                                                                .btnSelectedInt = 5;
                                                            navigationPage
                                                                .btnSelectedStream
                                                                .add(5);
                                                          });
                                                        });
                                                  });
                                            });
                                      });
                                });
                          });
                    }),
              );
            });
      });
}

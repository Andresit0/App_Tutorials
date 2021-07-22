import 'package:url_launcher/url_launcher.dart';

void openAWeb(String webPage) async {
  if (await canLaunch(webPage))
    await launch(webPage);
  else
    // can't launch url, there is some error
    throw "Could not launch $webPage";
}

import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';

class ShareController extends GetxController {
  Future<void> share(String text, String link) async {
    await FlutterShare.share(
      title: text,
      text: text,
      linkUrl: link,
      chooserTitle: text,
    );
  }
}

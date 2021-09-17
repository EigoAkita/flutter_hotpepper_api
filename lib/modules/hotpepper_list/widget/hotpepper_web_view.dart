import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HotPepperWebView extends StatelessWidget {
  HotPepperWebView({required this.linkUrl});
  final String linkUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: WebView(
        initialUrl: linkUrl,
      ),
    );
  }
}

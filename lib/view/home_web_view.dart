import 'package:children_education/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../model/m_home_data.dart';

class PageWebView extends StatefulWidget {
  const PageWebView({super.key, required this.data});
  final ModelHomeData data;
  @override
  State<PageWebView> createState() => _PageWebViewState();
}

class _PageWebViewState extends State<PageWebView> {
  /// Global
  late WebViewController controller;

  @override
  void initState() {
    super.initState();

    /// run just first run  when open
    /// configuration
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.data.link!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kcolor,

        /// access properties in class first
        title: const Text("علم طفلك"),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Vrhome extends StatefulWidget {
  const Vrhome({super.key});

  @override
  State<Vrhome> createState() => _VrhomeState();
}

class _VrhomeState extends State<Vrhome> {
  late InAppWebViewController _webViewController;
  late String _url;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Initialize the WebViewController
    // Load the VR link
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _webViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('House Tour')),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest:
                URLRequest(url: WebUri("https://www.vpix.net/754104")
                ),
            initialSettings: InAppWebViewSettings(
              useHybridComposition: true,
              javaScriptEnabled: true,
            ),
            onReceivedServerTrustAuthRequest: (controller, challenge) async {
              return ServerTrustAuthResponse(
                action: ServerTrustAuthResponseAction.PROCEED,
              );
            },
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.green
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Broker',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Muhammad Shoaib',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Phone Number +923030546172',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Container(
                    width: 53,
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/Shoaib.png',
                      ),
                      foregroundColor: Colors.blue,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

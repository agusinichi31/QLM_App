import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Pythagoras extends StatefulWidget {
  const Pythagoras({super.key});

  @override
  State<Pythagoras> createState() => _PythagorasState();
}

class _PythagorasState extends State<Pythagoras> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(16, 16, 17, 1),
            Color.fromRGBO(39, 105, 171, 1),
          ])),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Pythagoras'),
            backgroundColor: Color.fromRGBO(143, 148, 251, 1),
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 120),
                child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: Icon(Icons.arrow_forward),
                    label: Text('Indikator CP')),
              ),
              Visibility(
                  visible: isVisible,
                  child: Container(
                    width: 350,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              '1. Siswa dapat membuktikan teorema pythagoras pada segitiga siku-siku',
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              '2. Siswa dapat menghitung panjang sisi segitiga siku-siku dengan mengetahui dua sisi lainnya',
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              '3.Siswa dapat menyelesaikan masalah kontekstual yang berkaitan dengan teorema pythagoras',
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PT1()));
                  },
                  child: Text('Topik 1: Penerapan Teorema Pythagoras 1')),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PT2()));
                  },
                  child: Text('Topik 2: Penerapan Teorema Pythagoras 2'))
            ],
          ),
        ),
      ],
    );
  }
}

class PT1 extends StatefulWidget {
  const PT1({super.key});

  @override
  State<PT1> createState() => _PT1State();
}

class _PT1State extends State<PT1> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Color(0x00000000))
    ..setNavigationDelegate(NavigationDelegate(onProgress: (progress) {}))
    ..loadRequest(Uri.parse('https://app.Lumi.education/run/pGClQ4'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topik 1'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}

class PT2 extends StatefulWidget {
  const PT2({super.key});

  @override
  State<PT2> createState() => _PT2State();
}

class _PT2State extends State<PT2> {
  final _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Color(0x00000000))
    ..setNavigationDelegate(NavigationDelegate(onProgress: (progress) {}))
    ..loadRequest(Uri.parse('https://app.Lumi.education/run/wtHrsj'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topik 2'),
      ),
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Peluang extends StatefulWidget {
  const Peluang({super.key});

  @override
  State<Peluang> createState() => _PeluangState();
}

class _PeluangState extends State<Peluang> {
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
            title: Text('Peluang'),
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
                              '1. Siswa dapat menentukan peluang empirik dari suatu kejadian',
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
                              '2. Siswa dapat menentukan peluang teoritik dari suatu kejadian',
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
                              '3.Siswa dapat Menyelesaikan masalah kontekstual terkait dengan peluang kejadian',
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
                        MaterialPageRoute(builder: (context) => PlT1()));
                  },
                  child: Text('Topik 1: Peluang Empirik')),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PlT2()));
                  },
                  child: Text('Topik 2: Peluang Teoritik'))
            ],
          ),
        ),
      ],
    );
  }
}

class PlT1 extends StatefulWidget {
  const PlT1({super.key});

  @override
  State<PlT1> createState() => _PlT1State();
}

class _PlT1State extends State<PlT1> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Color(0x00000000))
    ..setNavigationDelegate(NavigationDelegate(onProgress: (progress) {}))
    ..loadRequest(Uri.parse('https://app.Lumi.education/run/izWKwL'));

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

class PlT2 extends StatefulWidget {
  const PlT2({super.key});

  @override
  State<PlT2> createState() => _PlT2State();
}

class _PlT2State extends State<PlT2> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Color(0x00000000))
    ..setNavigationDelegate(NavigationDelegate(onProgress: (progress) {}))
    ..loadRequest(Uri.parse('https://app.Lumi.education/run/R_p5OV'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topik 2'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}

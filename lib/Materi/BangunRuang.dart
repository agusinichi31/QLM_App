import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Bangunruang extends StatefulWidget {
  const Bangunruang({super.key});

  @override
  State<Bangunruang> createState() => _BangunruangState();
}

class _BangunruangState extends State<Bangunruang> {
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
            title: Text('Bangun Ruang'),
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
                              '1. Siswa dapat menentukan volume bangun ruang kubus',
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
                              '2. Siswa dapat menentukan volume bangun ruang balok',
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
                              '3.Siswa dapat menyelesaikan masalah kontekstual terkait dengan volume kubus dan balok',
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
                        MaterialPageRoute(builder: (context) => BRT1()));
                  },
                  child: Text('Topik 1: Volume Kubus')),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BRT2()));
                  },
                  child: Text('Topik 2: Volume Balok'))
            ],
          ),
        ),
      ],
    );
  }
}

class BRT1 extends StatefulWidget {
  const BRT1({super.key});

  @override
  State<BRT1> createState() => _BRT1State();
}

class _BRT1State extends State<BRT1> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Color(0x00000000))
    ..setNavigationDelegate(NavigationDelegate(onProgress: (progress) {}))
    ..loadRequest(Uri.parse('https://app.Lumi.education/run/K_Oy6P'));

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

class BRT2 extends StatefulWidget {
  const BRT2({super.key});

  @override
  State<BRT2> createState() => _BRT2State();
}

class _BRT2State extends State<BRT2> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Color(0x00000000))
    ..setNavigationDelegate(NavigationDelegate(onProgress: (progress) {}))
    ..loadRequest(Uri.parse('https://app.Lumi.education/run/zKvcez'));

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

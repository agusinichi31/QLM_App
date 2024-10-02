import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Statistika extends StatefulWidget {
  const Statistika({super.key});

  @override
  State<Statistika> createState() => _StatistikaState();
}

class _StatistikaState extends State<Statistika> {
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
            title: Text('Statistika'),
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
                              '1. Siswa dapat menentukan Mean atau Rata-rata dari suatu kumpulan data tunggal',
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
                              '2. Siswa dapat menentukan median atau nilai tengah dari suatu kumpulan data tunggal',
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
                              '3.Siswa dapat menyelesaikan suatu permasalahan yang berkaitan dengan mean dan median dari suatu data tunggal',
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
                        MaterialPageRoute(builder: (context) => ST1()));
                  },
                  child: Text('Topik 1: Mean')),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ST2()));
                  },
                  child: Text('Topik 2: Median'))
            ],
          ),
        ),
      ],
    );
  }
}

class ST1 extends StatefulWidget {
  const ST1({super.key});

  @override
  State<ST1> createState() => _ST1State();
}

class _ST1State extends State<ST1> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Color(0x00000000))
    ..setNavigationDelegate(NavigationDelegate(onProgress: (progress) {}))
    ..loadRequest(Uri.parse('https://app.Lumi.education/run/kjmqgb'));

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

class ST2 extends StatefulWidget {
  const ST2({super.key});

  @override
  State<ST2> createState() => _ST2State();
}

class _ST2State extends State<ST2> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Color(0x00000000))
    ..setNavigationDelegate(NavigationDelegate(onProgress: (progress) {}))
    ..loadRequest(Uri.parse('https://app.Lumi.education/run/HUuNq7'));

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

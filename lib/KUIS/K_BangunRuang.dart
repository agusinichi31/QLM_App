import 'package:flutter/material.dart';
import 'package:quicklearn_math/MainPage.dart';

class QuestionModel1 {
  String? question1;
  String? Image1;
  Map<String, bool>? answers1;

  QuestionModel1(this.Image1, this.question1, this.answers1);
}

List<QuestionModel1> questions1 = [
  QuestionModel1(
      'Image/Soal/BR1.png',
      'Pada Gambar di atas, terdapat sebuah kubus yang berukuran 512 Cm(kubik). Tentukan panjang rusuk kubus tersebut. . . .',
      {
        'A. 6 cm': false,
        'B. 8 cm': true,
        'C. 14 cm': false,
        'D. 18 cm': false,
      }),
  QuestionModel1(
      'Image/Soal/BR2.png',
      'Diketahui panjang AB = 20 cm, BC = 8 cm, CG = 15 cm, maka volume dari balok di atas adalah . . . . Cm(Kubik)',
      {
        'A. 2800': false,
        'B. 2400': true,
        'C. 2200': false,
        'D. 1600': false,
      }),
  QuestionModel1(
      'Image/Soal/BR3.png',
      'Pada gambar di atas, terdapat dua bangun ruang yaitu (a) Kubus dan (b) Balok. diketahui rusuk kubus yaitu 4 cm dan akan dimasukkan ke dalam sebuah balok. Sedangkan, balok memiliki panjang, lebar, dan tinggi berturut-turut yaitu 20 cm, 8 cm, dan 12 cm. Tentukan banyak kubus yang diperlukan untuk memenuhi sebuah balok. . . .',
      {
        'A. 34 cm': false,
        'B. 32 cm': false,
        'C. 30 cm': true,
        'D. 28 cm': false,
      }),
  QuestionModel1(
      'Image/Soal/BR4.png',
      'Pak Rudi memiliki bak mandi berukuran panjang 120 cm, lebar 80 cm, dan 65 cm. Bak tersebut telah terisi 3/4 bagian. untuk mengisi bak tersebut hingga penuh diperlukan air . . . . ',
      {
        'A. 624 Liter': false,
        'B. 468 Liter': false,
        'C. 312 Liter': false,
        'D. 156 Liter': true,
      }),
  QuestionModel1(
      'Image/Soal/BR5.png',
      'Perhatikan gambar di atas, diketahui dua bangun datar yaitu balok dan kubus memiliki ukuran sesuai di gambar. Tentukan volume total kedua bangun ruang tersebut . . . .',
      {
        'A. 4428': true,
        'B. 4628': false,
        'C. 4248': false,
        'D. 4482': false,
      }),
];

class TesB2 extends StatefulWidget {
  const TesB2({Key? key}) : super(key: key);

  @override
  State<TesB2> createState() => _TesB2State();
}

class _TesB2State extends State<TesB2> {
  Color mainColor = Color(0xFF252c4a);
  Color SecondColor = Color(0xFF117eeb);

  PageController? _controller1 = PageController(initialPage: 0);

  bool isPressed1 = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xFF117eeb);
  int Score1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Soal Pythagoras'),
        backgroundColor: Color(0xFF8C9EFF),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller1!,
          onPageChanged: (page) {
            setState(() {
              isPressed1 = false;
            });
          },
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      '   Soal ${index + 1}dari ${questions1.length}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  questions1[index].Image1!,
                  scale: 3.0,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  questions1[index].question1!,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 15,
                ),
                for (int i = 0; i < questions1[index].answers1!.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 10),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      color: isPressed1
                          ? questions1[index]
                                  .answers1!
                                  .entries
                                  .toList()[i]
                                  .value
                              ? isTrue
                              : isWrong
                          : SecondColor,
                      onPressed: () {
                        setState(() {
                          isPressed1 = true;
                        });
                        if (questions1[index]
                            .answers1!
                            .entries
                            .toList()[i]
                            .value) {
                          Score1 += 10;
                          print(Score1);
                          setState(() {
                            btnColor = isTrue;
                          });
                        } else {
                          setState(() {
                            btnColor = isWrong;
                          });
                        }
                      },
                      child: Text(
                        questions1[index].answers1!.keys.toList()[i],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: isPressed1
                            ? index + 1 == questions1.length
                                ? () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HasilPage1(
                                                  Score1: Score1,
                                                )));
                                  }
                                : () {
                                    _controller1!.nextPage(
                                        duration: Duration(milliseconds: 250),
                                        curve: Curves.easeInExpo);
                                    setState(() {
                                      isPressed1 = false;
                                    });
                                  }
                            : null,
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: StadiumBorder(),
                            side: BorderSide(color: Colors.orange, width: 3.0)),
                        child: Text(
                          index + 1 == questions1.length
                              ? "Lihat Hasil"
                              : "Soal Selanjutnya",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                )
              ],
            );
          },
          itemCount: questions1.length,
        ),
      ),
    );
  }
}

class HasilPage1 extends StatefulWidget {
  final int Score1;
  const HasilPage1({Key? key, required this.Score1}) : super(key: key);

  @override
  State<HasilPage1> createState() => _HasilPage1State();
}

class _HasilPage1State extends State<HasilPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil latihan Pythagoras'),
        backgroundColor: Color(0xFF8C9EFF),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'SELAMAT\n Sudah Menyelesaikan Latihan ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'NunitoBold'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Perolehan Nilaimu :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '${widget.Score1}/${questions1.length * 10}',
              style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              alignment: Alignment.center,
              child: Image(image: AssetImage('Image/Sum.gif')),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
              child: Text(
                'Ulang Latihan',
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}

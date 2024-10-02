import 'package:quicklearn_math/MainPage.dart';
import 'package:flutter/material.dart';

class QuestionModel {
  String? question;
  String? Image;
  Map<String, bool>? answers;

  QuestionModel(this.Image, this.answers, this.question);
}

List<QuestionModel> questions = [
  QuestionModel(
      'Image/Soal/Pythagoras1.png',
      {
        'A. 110 Km': false,
        'B. 115 Km': false,
        'C. 125 Km': true,
        'D. 130 Km': false,
      },
      'Sebuah kapal berlayar sejauh 100 KM ke arah barat, kemudian berbelok ke arah selatan sejauh 75 KM. Berapa jarak terpendek kapal tersebut dari titik keberangkatan. . . . .'),
  QuestionModel(
      'Image/Soal/Pythagoras2.png',
      {
        'A. 9 m': true,
        'B. 10 m': false,
        'C. 11 m': false,
        'D. 12 m': false,
      },
      'Sebuah tiang bendera dengan tinggi 12 m berdiri tegak di atas permukaan tanah yang datar. Dari ujung atas tiang bendera ditarik seutas tali ke sebuah patok pada tanah dengan panjang tali 15 m, seperti gambar di atas ini. Tentukanlah jarak patok dengan pangkal tiang bendera . . . .'),
  QuestionModel(
      'Image/Soal/Pythagoras3.png',
      {
        'A. 2 Meter': false,
        'B. 4 meter': true,
        'C. 6 meter': false,
        'D. 8 meter': false,
      },
      'Perhatikan gambar dan pernyataan di atas, Sebuah tangga dengan panjang 5 m bersandar pada sebuah pohon. Jika jarak dasar tangga ke pangkal pohon adalah 3 m tentukan tinggi pohon tersebut . . . .'),
  QuestionModel(
      'Image/Soal/Pythagoras4.png',
      {
        'A. 26 meter': true,
        'B. 28 meter': false,
        'C. 30 meter': false,
        'D. 32 meter': false,
      },
      'Dua buah tiang berdiri berdampingan berjarak 24 meter. Tinggi masing-masing tiang adalah 12 meter dan 22 meter, seperti gambar di atas. Hitunglah panjang kawat penghubung dari ujung tiang A dan ujung tiang B . . .'),
  QuestionModel(
      'Image/Soal/Pythagoras5.png',
      {
        'A. 50 m': false,
        'B. 100 m': true,
        'C. 150 m': false,
        'D. 200 m': false,
      },
      'Perhatikan gambar di atas, diketahui seorang kapten berada di dalam sebuah kapal berjarak 80 m dengan mercusuar yang memiliki ketinggian 60 m. tentukan jarak pandang antara kapten dengan lampu pada mercusuar. . . .'),
];

class TesB1 extends StatefulWidget {
  const TesB1({Key? key}) : super(key: key);

  @override
  State<TesB1> createState() => _TesB1State();
}

class _TesB1State extends State<TesB1> {
  Color mainColor = Color(0xFF252c4a);
  Color SecondColor = Color(0xFF117eeb);

  PageController? _controller = PageController(initialPage: 0);

  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xff117eeb);
  int score = 0;
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
          controller: _controller!,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      '    Soal ${index + 1} dari ${questions.length}',
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
                Image.asset(questions[index].Image!, scale: 2.0),
                SizedBox(
                  height: 20,
                ),
                Text(
                  questions[index].question!,
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 15,
                ),
                for (int i = 0; i < questions[index].answers!.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 10),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      color: isPressed
                          ? questions[index].answers!.entries.toList()[i].value
                              ? isTrue
                              : isWrong
                          : SecondColor,
                      onPressed: () {
                        setState(() {
                          isPressed = true;
                        });
                        if (questions[index]
                            .answers!
                            .entries
                            .toList()[i]
                            .value) {
                          score += 10;
                          print(score);
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
                        questions[index].answers!.keys.toList()[i],
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
                      onPressed: isPressed
                          ? index + 1 == questions.length
                              ? () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HasilPage(score: score)));
                                }
                              : () {
                                  _controller!.nextPage(
                                      duration: Duration(milliseconds: 250),
                                      curve: Curves.easeInExpo);
                                  setState(() {
                                    isPressed = false;
                                  });
                                }
                          : null,
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: StadiumBorder(),
                          side: BorderSide(color: Colors.orange, width: 3.0)),
                      child: Text(
                        index + 1 == questions.length
                            ? "Lihat Hasil"
                            : "Soal Selanjutnya",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class HasilPage extends StatefulWidget {
  final int score;
  const HasilPage({Key? key, required this.score}) : super(key: key);

  @override
  State<HasilPage> createState() => _HasilPageState();
}

class _HasilPageState extends State<HasilPage> {
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
                'Selamat\n Sudah Menyelesaikan Latihan',
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
            Text(
              'Perolehan Nilaimu : ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '${widget.score}/${questions.length * 10}',
              style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
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

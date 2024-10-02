import 'package:quicklearn_math/MainPage.dart';
import 'package:flutter/material.dart';

class QuestionModel3 {
  String? questions3;
  String? Image3;
  Map<String, bool>? answers3;

  QuestionModel3(this.Image3, this.questions3, this.answers3);
}

List<QuestionModel3> questions3 = [
  QuestionModel3(
      'Image/Soal/Peluang1.png',
      'Perhatikan tabel di atas, Berapakah peluang empirik munculnya mata dadu 2 dalam kejadian percobaan di atas . . . .',
      {
        'A. 3/21 ': true,
        'B. 5/21': false,
        'C. 6/21': false,
        'D. 2/21': false,
      }),
  QuestionModel3(
      'Image/Soal/Peluang2.png',
      'Perhatikan tabel di atas, Made melakukan sebuah percobaan melempar 3 buah koin sebanyak 100 kali. Berapakah peluang munculnya 2 angka 1 gambar . . . .',
      {
        'A. 1/10 ': false,
        'B. 2/10': false,
        'C. 3/10': true,
        'D. 4/10': false,
      }),
  QuestionModel3(
      'Image/Soal/Peluang3.png',
      'Tabel di atas merupakan data hasil percobaan penggelindingan dadu sebanyak sekian kali. Jika peluang empirik kemunculan mata dadu "1" adalah 1/6. Maka, banyak kemunculkan mata dadu "selain 2" dalam percobaan tersebut adalah . . . .',
      {
        'A. 31/36 ': true,
        'B. 5/36': false,
        'C. 5/36': false,
        'D. 5/31': false,
      }),
  QuestionModel3(
      'Image/Soal/Peluang4.png',
      'Seorang melakukan pengundian dengan melempar 1 dadu dan 1 koin. Peluang teoritik munculnya mata dadu "1" dan Koin "angka" dalam pengundian tersebut adalah . . . .',
      {
        'A. 2/12 ': false,
        'B. 1/12': true,
        'C. 1/4': false,
        'D. 1/3': false,
      }),
  QuestionModel3(
      'Image/Soal/Peluang5.png',
      'Sebuah kotak berisi 15 bola biru, 12 bola merah, dan 25 bola hijau. jika sebuah bola diambil secara acak, peluang terambilnya bola merah adalah . . . .',
      {
        'A. 1/2 ': false,
        'B. 1/4': false,
        'C. 1/10': false,
        'D. 3/13': true,
      }),
];

class TesB4 extends StatefulWidget {
  const TesB4({Key? key}) : super(key: key);

  @override
  State<TesB4> createState() => _TesB4State();
}

class _TesB4State extends State<TesB4> {
  Color mainColor = Color(0xFF252C4a);
  Color SecondColor = Color(0xFF117eeb);
  PageController? _controller3 = PageController(initialPage: 0);
  bool isPressed3 = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xFF117eeb);
  int Score3 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Soal Peluang'),
        backgroundColor: Color(0xFF8C9EFF),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller3,
          onPageChanged: (page) {
            setState(() {
              isPressed3 = false;
            });
          },
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      '   Soal ${index + 1} dari ${questions3.length}',
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
                Image.asset(questions3[index].Image3!),
                SizedBox(
                  height: 20,
                ),
                Text(
                  questions3[index].questions3!,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 15,
                ),
                for (int i = 0; i < questions3[index].answers3!.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 10),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      color: isPressed3
                          ? questions3[index]
                                  .answers3!
                                  .entries
                                  .toList()[i]
                                  .value
                              ? isTrue
                              : isWrong
                          : SecondColor,
                      onPressed: () {
                        setState(() {
                          isPressed3 = true;
                        });
                        if (questions3[index]
                            .answers3!
                            .entries
                            .toList()[i]
                            .value) {
                          Score3 += 10;
                          print(Score3);
                          setState(() {
                            btnColor = isTrue;
                          });
                        } else {
                          setState(() {
                            btnColor = isWrong;
                          });
                        }
                        ;
                      },
                      child: Text(
                        questions3[index].answers3!.keys.toList()[i],
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
                      onPressed: isPressed3
                          ? index + 1 == questions3.length
                              ? () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HasilPage3(
                                                Score3: Score3,
                                              )));
                                }
                              : () {
                                  _controller3!.nextPage(
                                      duration: Duration(milliseconds: 250),
                                      curve: Curves.easeInExpo);
                                  setState(() {
                                    isPressed3 = false;
                                  });
                                }
                          : null,
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: StadiumBorder(),
                          side: BorderSide(color: Colors.orange, width: 3.0)),
                      child: Text(
                        index + 1 == questions3.length
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
          itemCount: questions3.length,
        ),
      ),
    );
  }
}

class HasilPage3 extends StatefulWidget {
  final int Score3;
  const HasilPage3({Key? key, required this.Score3}) : super(key: key);

  @override
  State<HasilPage3> createState() => _HasilPage3State();
}

class _HasilPage3State extends State<HasilPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Latihan Peluang'),
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
          Text(
            'Perolehan Nilaimu :',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40),
          Text(
            '${widget.Score3}/${questions3.length * 10}',
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
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
            },
            child: Text(
              'Ulangi Latihan',
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      )),
    );
  }
}

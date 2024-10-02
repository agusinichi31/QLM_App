import 'package:quicklearn_math/MainPage.dart';
import 'package:flutter/material.dart';

class QuestionModel2 {
  String? questions2;
  String? Image2;
  Map<String, bool>? answers2;

  QuestionModel2(this.Image2, this.questions2, this.answers2);
}

List<QuestionModel2> questions2 = [
  QuestionModel2('Image/Soal/Statistika 1.png',
      'Berapakah mean dari data di atas. . . .', {
    'A. 5': false,
    'B. 6': true,
    'C. 7': false,
    'D. 8': false,
  }),
  QuestionModel2('Image/Soal/Statistika 2.png',
      'Berapakah Median dari data di atas . . . .', {
    'A. 6': false,
    'B. 7': false,
    'C. 8': true,
    'D. 9': false,
  }),
  QuestionModel2(
      'Image/Soal/Statistika 3.png',
      'Perhatikan tabel berat badan siswa kelas 8 SMP di atas. Tentukan rata-rata dari berat badan siswa keseluruhan . . . .',
      {
        'A. 36': true,
        'B. 37': false,
        'C. 38': false,
        'D. 39': false,
      }),
  QuestionModel2(
      'Image/Soal/Statistika 4.png',
      'Perhatikan tabel tinggi badan siswa SMP di atas, Tentukan Median dari data tinggi badan di atas . . . .',
      {
        'A. 122': false,
        'B. 124': true,
        'C. 126': false,
        'D. 128': false,
      }),
  QuestionModel2(
      'Image/Soal/Statistika 5.png',
      'Nilai ulangan matematika siswa kelas 8 SMP dengan jumlah 202 siswa seperti data di atas, Tentukanlah mean dan median dari niai ulangan matematika siswa tersebut secara berturut-turut adalah . . . .',
      {
        'A. 80 dan 82.5': true,
        'B. 82 dan 83.5': false,
        'C. 83 dan 84.5': false,
        'D. 84 dan 85.5': false,
      })
];

class TesB3 extends StatefulWidget {
  const TesB3({Key? key}) : super(key: key);

  @override
  State<TesB3> createState() => _TesB3State();
}

class _TesB3State extends State<TesB3> {
  Color mainColor = Color(0xFF252C4a);
  Color SecondColor = Color(0xFF117eeb);
  PageController? _controller2 = PageController(initialPage: 0);
  bool isPressed2 = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xFF117eeb);
  int Score2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Soal Statistika'),
        backgroundColor: Color(0xFF8C9EFF),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller2!,
          onPageChanged: (page) {
            setState(() {
              isPressed2 = false;
            });
          },
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      '   Soal ${index + 1} dari ${questions2.length}',
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
                  questions2[index].Image2!,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  questions2[index].questions2!,
                ),
                SizedBox(
                  height: 15,
                ),
                for (int i = 0; i < questions2[index].answers2!.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 10),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      color: isPressed2
                          ? questions2[index]
                                  .answers2!
                                  .entries
                                  .toList()[i]
                                  .value
                              ? isTrue
                              : isWrong
                          : SecondColor,
                      onPressed: () {
                        setState(() {
                          isPressed2 = true;
                        });
                        if (questions2[index]
                            .answers2!
                            .entries
                            .toList()[i]
                            .value) {
                          Score2 += 10;
                          print(Score2);
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
                        questions2[index].answers2!.keys.toList()[i],
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
                        onPressed: isPressed2
                            ? index + 1 == questions2.length
                                ? () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HasilPage2(
                                                  Score2: Score2,
                                                )));
                                  }
                                : () {
                                    _controller2!.nextPage(
                                        duration: Duration(milliseconds: 250),
                                        curve: Curves.easeInExpo);
                                    setState(() {
                                      isPressed2 = false;
                                    });
                                  }
                            : null,
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: StadiumBorder(),
                            side: BorderSide(color: Colors.orange, width: 3.0)),
                        child: Text(
                          index + 1 == questions2.length
                              ? "Lihat Hasil"
                              : "Soal Selanjutnya",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                )
              ],
            );
          },
          itemCount: questions2.length,
        ),
      ),
    );
  }
}

class HasilPage2 extends StatefulWidget {
  final int Score2;
  const HasilPage2({Key? key, required this.Score2}) : super(key: key);

  @override
  State<HasilPage2> createState() => _HasilPage2State();
}

class _HasilPage2State extends State<HasilPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Latihan Statistika'),
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
            'Perolehan Nilaimu :',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40),
          Text(
            '${widget.Score2}/${questions2.length * 10}',
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

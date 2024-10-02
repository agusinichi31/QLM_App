import 'package:flutter/material.dart';
import 'package:quicklearn_math/main.dart';

class StepUse {
  String? image;
  String? title;
  String? discription;

  StepUse({this.discription, this.image, this.title});
}

List<StepUse> contents = [
  StepUse(
      title: 'Halaman Login',
      discription:
          'Silahkan diisi terlebih dahulu unsername dan password kemudian klik Login',
      image: 'Image/Petunjuk1.png'),
  StepUse(
      title: 'Materi Pembelajaran',
      discription:
          'Pada halaman ini, terdapat 4 bab yang akan dipelajari. Silahkan dipilih bab dan juga topik pada masing-masing bab yang ingin dipelajari',
      image: 'Image/Petunjuk2.png'),
  StepUse(
      title: 'Latihan Soal',
      discription:
          'pada masing-masing materi terdapat latihan soal yang berupa objektif sebanyak 5 soal. pilih salah satu jawaban dan soal hanya bisa dijawab sekali.',
      image: 'Image/Petunjuk3.png')
];

class Registrasi extends StatefulWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  int currentIndex = 0;
  late PageController _controller1;

  @override
  void initState() {
    _controller1 = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Petunjuk Penggunaan'),
        ),
        body: Column(
          children: [
            Expanded(
                child: PageView.builder(
              controller: _controller1,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image!,
                        height: 300,
                      ),
                      Text(
                        contents[i].title!,
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        contents[i].discription!,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                );
              },
            )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    contents.length, (index) => buildDot(index, context)),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                    currentIndex == contents.length - 1 ? 'Selesai' : 'Lanjut'),
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LoginEdumath(),
                        ));
                  }
                  _controller1.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
              ),
            )
          ],
        ));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).primaryColor),
    );
  }
}

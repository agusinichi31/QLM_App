import 'package:flutter/material.dart';
import 'package:quicklearn_math/Materi/BangunRuang.dart';
import 'package:quicklearn_math/Materi/Peluang.dart';
import 'package:quicklearn_math/Materi/Pythagoras.dart';
import 'package:quicklearn_math/Materi/Statistika.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Materi Pembelajaran'),
        backgroundColor: Color.fromRGBO(143, 148, 251, 1),
      ),
      body: Container(
        color: Colors.white,
        height: height,
        width: width,
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(
                  50,
                )),
              ),
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: Text(
                      'Hi, Anak-anak',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Nisebuschgardens',
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      'Selamat datang di Aplikasi QuickLearn Mathematics',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Nunito',
                          color: Colors.white),
                    ))
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: height,
              width: width,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:
                            DecorationImage(image: AssetImage('Image/2.png'))),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pythagoras()));
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:
                            DecorationImage(image: AssetImage('Image/1.png'))),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Bangunruang()));
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage('Image/3.png')),
                    ),
                    child: InkWell(onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Statistika()));
                    }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:
                            DecorationImage(image: AssetImage('Image/4.png'))),
                    child: InkWell(onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Peluang()));
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

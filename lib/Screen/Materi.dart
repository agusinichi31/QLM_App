import 'package:flutter/material.dart';
import 'package:quicklearn_math/KUIS/K_BangunRuang.dart';
import 'package:quicklearn_math/KUIS/K_Peluang.dart';
import 'package:quicklearn_math/KUIS/K_Pythagoras.dart';
import 'package:quicklearn_math/KUIS/K_Statistika.dart';

class MateriPage extends StatefulWidget {
  const MateriPage({Key? key}) : super(key: key);

  @override
  State<MateriPage> createState() => _MateriPageState();
}

class _MateriPageState extends State<MateriPage> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('Latihan'),
          backgroundColor: Color.fromRGBO(143, 148, 251, 1),
        ),
        body: Container(
          color: Colors.white,
          height: height,
          width: width,
          child: ListView(padding: EdgeInsets.zero, children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                  50,
                )),
              ),
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: Text(
                      'Silahkan Uji Kemampuanmu',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Nisebuschgardens',
                          color: Colors.white),
                    ),
                    subtitle: Text(
                        'Berikut merupakan tes yang tersedia pada QuickLearn Mathematics',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            color: Colors.white)))
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
                          image: DecorationImage(
                              image: AssetImage('Image/2.png'))),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => TesB1()));
                        },
                      )),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('Image/1.png'))),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => TesB2()));
                        },
                      )),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:
                            DecorationImage(image: AssetImage('Image/3.png')),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => TesB3()));
                        },
                      )),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('Image/4.png'))),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => TesB4()));
                        },
                      )),
                ],
              ),
            )
          ]),
        ));
  }
}

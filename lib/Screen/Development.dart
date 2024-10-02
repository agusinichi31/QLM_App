import 'package:flutter/material.dart';

class Development extends StatelessWidget {
  const Development({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                Color.fromRGBO(16, 16, 17, 1),
                Color.fromRGBO(39, 105, 171, 1),
              ],
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter)),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Profil Pengembang'),
            backgroundColor: Color.fromRGBO(143, 148, 251, 1),
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Profil\nPengembang',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Nisebuschgardens'),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: height * 0.45,
                  child: LayoutBuilder(builder: ((context, constraints) {
                    double innerHeight = constraints.maxHeight;
                    double innerWidth = constraints.maxWidth;
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: innerHeight * 0.65,
                            width: innerWidth,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Text(
                                  'Nyoman Agus Wiryanta',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(39, 105, 171, 1),
                                      fontFamily: 'Nunito'),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Studi',
                                          style: TextStyle(
                                              color: Colors.grey[700],
                                              fontFamily: 'Nunito'),
                                        ),
                                        Text(
                                          '  S2 Teknologi Pendidikan',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(39, 105, 171, 1),
                                            fontFamily: 'Nunito',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 40,
                                        width: 2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: Colors.grey),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Kelahiran',
                                          style: TextStyle(
                                              color: Colors.grey[700],
                                              fontFamily: 'Nunito'),
                                        ),
                                        Text(
                                          '31 Agustus 1999',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(39, 105, 171, 1),
                                            fontFamily: 'Nunito',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  'Tentang',
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontFamily: 'Nunito',
                                      fontSize: 20),
                                ),
                                Text(
                                  'Mobile Application dikembangkan untuk membantu pembelajaran matematika kelas VIII. Dalam produk ini terdiri dari beberapa materi khususnya kelas VIII semester 2',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontFamily: 'Nunito',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              child: Image.asset(
                                'Image/Photo Bulat.png',
                                width: innerWidth * 0.45,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  })),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: height * 0.62,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Pembimbing Developer',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 25,
                              fontFamily: 'Nunito'),
                        ),
                        Divider(
                          thickness: 2.5,
                        ),
                        Container(
                          height: height * 0.25,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  'Image/PB1.png',
                                  fit: BoxFit.fitWidth,
                                  width: width * 0.30,
                                ),
                              ),
                              Column(children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Nama',
                                  style: TextStyle(fontSize: 14),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  'Prof. Dr. Ni Nyoman Parwati, M. Pd.',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text('Tutup'),
                                                ),
                                              ],
                                              title: Text('Biografi'),
                                              contentPadding:
                                                  EdgeInsets.all(10.0),
                                              content: Text(
                                                  'Ni Nyoman Parwati lahir di Tabanan pada 29 Desember 1965. Gelar sarjana pendidikan matematika diraih dari FKIP Universitas Udayana Singaraja pada tahun 1989; gelar magister di Jurusan Pendidikan Matematika IKIP Negeri Malang pada tahun 1998; Gelar Doktor di Jurusan Teknologi Pendidikan di Universitas Negeri Malang pada 2011. Saat ini, Ia menjadi dosen di Jurusan Matematika Undiksha, Program Pascasarjana, dan menjadi Koordinator Program Studi S2 & S3 Teknologi Pendidikan Undiksha '),
                                            ));
                                  },
                                  child: Text('Biografi'),
                                )
                              ]),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: height * 0.25,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  'Image/PB2.png',
                                  fit: BoxFit.fitWidth,
                                  width: width * 0.30,
                                ),
                              ),
                              Column(children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Nama',
                                  style: TextStyle(fontSize: 14),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  'Prof. Dr. Ketut Agustini, S. Si., M. Si.',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text('Tutup'),
                                                ),
                                              ],
                                              title: Text('Biografi'),
                                              contentPadding:
                                                  EdgeInsets.all(10.0),
                                              content: Text(
                                                  'Ketut Agustini lahir pada tanggal 1 Agustus 1974 di Singaraja, Bali, Indonesia. Ia meraih gelar sarjana Matematika dari Universitas Airlangga, Indonesia, pada tahun 1998; gelar master Ilmu Komputer dari Institut Pertanian Bogor, Indonesia, pada tahun 2006; dan gelar doktor Teknologi Pendidikan dari Universitas Negeri Jakarta, Indonesia, pada tahun 2014. Saat ini, ia menjadi dosen di Jurusan Pendidikan Teknik Informatika, Program Sarjana, dan juga Wakil Kepala Jurusan Teknologi Pendidikan, Program Pascasarjana, Universitas Pendidikan Ganesha, Bali, Indonesia.'),
                                            ));
                                  },
                                  child: Text('Biografi'),
                                )
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ),
        )
      ],
    );
  }
}

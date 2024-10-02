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
      image: '/Image/Petunjuk2.png'),
  StepUse(
      title: 'Latihan Soal',
      discription:
          'pada masing-masing materi terdapat latihan soal yang berupa objektif sebanyak 5 soal. pilih salah satu jawaban dan soal hanya bisa dijawab sekali.',
      image: '/Image/Petunjuk3.png')
];

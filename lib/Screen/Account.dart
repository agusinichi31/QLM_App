import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Akun Saya'),
          backgroundColor: Color.fromRGBO(143, 148, 251, 1),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('Image/Photo Bulat.png'),
            ),
            const SizedBox(height: 20),
            itemProfile('Name', 'Ahad Hashmi', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('Phone', '03107085816', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile(
                'Address', 'abc address, xyz city', CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile(
                'Email', 'ahadhashmideveloper@gmail.com', CupertinoIcons.mail),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
                child: Text('Edit Akun'),
              ),
            )
          ]),
        ));
  }
}

itemProfile(String title, String subtitle, IconData iconData) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 5),
              color: Colors.deepOrange.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 10)
        ]),
    child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(iconData),
      trailing: Icon(
        Icons.arrow_forward,
        color: Colors.grey.shade400,
      ),
      tileColor: Colors.white,
    ),
  );
}

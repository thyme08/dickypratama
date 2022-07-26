import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Formulir Pendaftaran Mahasiswa';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    // Row(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: <Widget>[
    //     const Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 49, vertical: 16),
    //       child: TextField(
    //         decoration: InputDecoration(
    //           border: OutlineInputBorder(),
    //           hintText: 'Nama',
    //         ),
    //       ),
    //     ),
    //   ],
    // );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 49, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Nama',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 49, vertical: 0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Alamat',
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('kelamin'),
                Expanded(
                  child: Row(
                    children: [
                      Radio(
                          value: 1, groupValue: 'null', onChanged: (index) {}),
                      Expanded(
                        child: Text('Laki-Laki'),
                      )
                    ],
                  ),
                  flex: 4,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Radio(
                          value: 1, groupValue: 'null', onChanged: (index) {}),
                      Expanded(child: Text('Perempuan'))
                    ],
                  ),
                  flex: 4,
                )
              ],
            ))
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 49, vertical: 0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'handphone',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 49, vertical: 0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'email',
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              color: Colors.blue[400],
              onPressed: () {},
              child: Text('save'),
            ),
            MaterialButton(
              color: Colors.blue[400],
              onPressed: () {},
              child: Text('cancel'),
            )
          ],
        ),
      ],
    );
  }
}

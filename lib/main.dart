import 'package:flutter/material.dart';
import 'package:kigyoutube/top.dart';
import 'package:kigyoutube/register.dart';

void main() => runApp(CookApp());

class CookApp extends StatelessWidget {
  var titleText = '好きなこと得意なことを仕事にしよう！';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(titleText: titleText),
    );
  }
}

class Home extends StatelessWidget {
  final String titleText;

  const Home({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
//Scaffoldm内に Navigatorを配置

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Welcome'),
      ),
      body: Container(
        child: Center(
          child: Column(children: <Widget>[
            Text(titleText),
            Expanded(
              child: Image.asset('images/test.png',),
            ),
            ElevatedButton(
              child: Text("ログイン"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopPage()),
                );
              },
            ),
          SizedBox(height: 10,),
            ElevatedButton(
              child: Text("新規登録"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:kigyoutube/top.dart';

class ThanksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('動画詳細ページ'),
      ),
      body: Container(
       child: Center(
          child: Column(children: <Widget>[
            Text('登録ありがとうございます！'),
            Expanded(
              child: Image.asset('images/test.png',),
            ),
            ElevatedButton(
              child: Text("さぁ、未来に向かて突き進もう！！"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopPage()),
                );
              },
            ),
          ],
          ),
        ),      ),
    );
  }
}
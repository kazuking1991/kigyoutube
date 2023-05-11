import 'package:flutter/material.dart';
import 'package:kigyoutube/thanks.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新規登録'),
      ),
      body: Container(
       child: Center(
          child: Column(children: <Widget>[
            Text('登録情報を入力しよう'),
            TextField(
              decoration: InputDecoration(
                hintText: '姓',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: '名',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'ニックネーム',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'メールアドレス',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'パスワード',
              ),
            ),
            ElevatedButton(
              child: Text("登録"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThanksPage()),
                );
              },
            ),
          ],
          ),
        ),
      ),
    );
  }
}
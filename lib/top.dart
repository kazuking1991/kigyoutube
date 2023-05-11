import 'package:flutter/material.dart';
import 'package:kigyoutube/view.dart';

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('kigyoutube'),
      ),
      body: Container(
       child: Center(
          child: Column(children: <Widget>[
            Text('好きな動画を選ぼう'),
            ElevatedButton(
              child: Text("動画A"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewPage()),
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
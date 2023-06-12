import 'package:flutter/material.dart';

class ExamInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[500],
        centerTitle: true,
        elevation: 0,
        title: Text(
          '考試資訊',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'NotoSansTC',
          ),
        ),
      ),
      body: Container(
        color: Colors.orange[200],
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Center(
          child: Text(
            "最近沒有考試",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PingxingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[500],
        centerTitle: true,
        elevation: 0, // Remove the app bar shadow
        title: Text(
          '平行處理',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'NotoSansTC',
          ),
        ),
      ),
      body: Container(
        color: Colors.orange[200],
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0), // Adjust the padding
        child: SingleChildScrollView(
          child: Column(
            children: [
              PingxingCard(
                title: '平行處理課綱',
                content: '平行處理課綱',
              ),
              SizedBox(height: 20.0),
              PingxingCard(
                title: '投影片',
                content: '投影片',
              ),
              SizedBox(height: 20.0),
              PingxingCard(
                title: 'Hadoop_chapter-1',
                content: 'Hadoop_chapter-1',
              ),
              SizedBox(height: 20.0),
              PingxingCard(
                title: 'Hadoop_chapter-2',
                content: 'Hadoop_chapter-2',
              ),
              SizedBox(height: 20.0),
              PingxingCard(
                title: 'Hadoop_chapter-3',
                content: 'Hadoop_chapter-3',
              ),
              SizedBox(height: 20.0),
              PingxingCard(
                title: 'Hadoop_chapter-4',
                content: 'Hadoop_chapter-4',
              ),
              SizedBox(height: 20.0),
              PingxingCard(
                title: 'Hadoop_chapter-7',
                content: 'Hadoop_chapter-7',
              ),
              SizedBox(height: 20.0),
              PingxingCard(
                title: 'Hadoop_chapter-8',
                content: 'Hadoop_chapter-8',
              ),
              SizedBox(height: 20.0),
              PingxingCard(
                title: 'MP21622_example',
                content: 'MP21622_example',
              ),
              SizedBox(height: 20.0),
              PingxingCard(
                title: '平行處理期中考參考解答',
                content: '平行處理期中考參考解答',
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}

class PingxingCard extends StatelessWidget {
  final String title;
  final String content;

  PingxingCard({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.orange[100],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(content),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              minimumSize: Size.fromHeight(40.0),
            ),
            child: Text(
              '下載',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

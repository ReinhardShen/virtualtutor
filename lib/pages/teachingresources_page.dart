import 'package:flutter/material.dart';
import 'package:virtualtutor/pages/pingxing_page.dart';

class TeachingMaterialsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[500],
        centerTitle: true,
        elevation: 0, // Remove the app bar shadow
        title: Text(
          '教學資源分享',
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
              TeachingMaterialsCard(
                title: '軟體工程',
                content: '老師：鐘文鈺\n時間：三(2-4)',
              ),
              SizedBox(height: 20.0),
              TeachingMaterialsCard(
                title: '實務專題(二)',
                content: '老師：楊孟翰、王志強、鐘文鈺、張道行、張雲龍、林威成、陳俊豪、黃淵科、林聯發、羅孟彥、陳洳瑾\n時間：',
              ),
              SizedBox(height: 20.0),
              TeachingMaterialsCard(
                title: '平行處理',
                content: '老師：楊孟翰\n時間：二(5-7)',
              ),
              SizedBox(height: 20.0),
              TeachingMaterialsCard(
                title: '資訊理論',
                content: '老師：吳明和\n時間：四(2-4)',
              ),
              SizedBox(height: 20.0),
              TeachingMaterialsCard(
                title: 'APP程式設計(二)',
                content: '老師：何丞世\n時間：一(5-7)',
              ),
              SizedBox(height: 20.0),
              TeachingMaterialsCard(
                title: '核心(三)創意與創新',
                content: '老師：鄭弘琦\n時間：五(3-4)',
              ),
              SizedBox(height: 20.0),
              TeachingMaterialsCard(
                title: '中文閱讀與表達',
                content: '老師：陳桂市\n時間：一(1-2)',
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}

class TeachingMaterialsCard extends StatelessWidget {
  final String title;
  final String content;

  TeachingMaterialsCard({required this.title, required this.content});

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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PingxingPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              minimumSize: Size.fromHeight(40.0),
            ),
            child: Text(
              '查看',
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

import 'package:flutter/material.dart';

class StudentInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200], // Use the same background color as the login page
      appBar: AppBar(
        backgroundColor: Colors.orange[500], // Darker orange color for the header
        elevation: 0, // Remove the app bar shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
        title: Text(
          '學生個人資訊',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Center the title horizontally
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 16.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      width: 160.0,
                      height: 160.0,
                      color: Colors.orange[300], // Color for the photo background
                      child: Image.asset(
                        'assets/student_image.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      width: 160.0,
                      height: 160.0,
                      color: Colors.orange[300], // Color for the QR code background
                      child: Image.asset(
                        'assets/qr_code.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange[100], // Lighter orange color for the info box
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.0),
                  InfoRow(title: '姓名', value: '沈宗隆'),
                  Divider(color: Colors.white), // Line separator
                  InfoRow(title: '學制', value: '日間部四技'),
                  Divider(color: Colors.white), // Line separator
                  InfoRow(title: '科系', value: '資訊工程系'),
                  Divider(color: Colors.white), // Line separator
                  InfoRow(title: '班級', value: '四資三甲'),
                  Divider(color: Colors.white), // Line separator
                  InfoRow(title: '學號', value: 'C109110168'),
                  SizedBox(height: 8.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String title;
  final String value;

  InfoRow({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

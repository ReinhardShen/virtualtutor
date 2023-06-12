import 'package:flutter/material.dart';

class TeamNamePage extends StatelessWidget {
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
            // Navigate back to the previous page
            Navigator.pop(context);
          },
        ),
        title: Text(
          '組員名字',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Center the title horizontally
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TeamMemberBox(
                name: '沈宗隆',
                studentId: 'C109110168',
                className: '四資三甲',
                role: '研究和做APP',
              ),
              SizedBox(height: 16.0),
              TeamMemberBox(
                name: '李宛芯',
                studentId: 'C109110169',
                className: '四資三甲',
                role: '研究和測試APP',
              ),
              SizedBox(height: 16.0),
              TeamMemberBox(
                name: '石承翰',
                studentId: 'C109151154',
                className: '四資三甲',
                role: '做報告',
              ),
              SizedBox(height: 16.0),
              TeamMemberBox(
                name: '謝卓研',
                studentId: 'C109152260',
                className: '四資三甲',
                role: '測試APP和做報告',
              ),
              SizedBox(height: 16.0),
              TeamMemberBox(
                name: '莊承翰',
                studentId: 'C109193202',
                className: '四資三甲',
                role: '研究和做APP',
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}

class TeamMemberBox extends StatelessWidget {
  final String name;
  final String studentId;
  final String className;
  final String role;

  TeamMemberBox({
    required this.name,
    required this.studentId,
    required this.className,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange[100], // Lighter orange color for the box background
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '姓名: $name',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '學號: $studentId',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '班級: $className',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '分工: $role',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}

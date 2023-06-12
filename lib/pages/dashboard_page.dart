import 'package:flutter/material.dart';
import 'package:virtualtutor/pages/timetable_page.dart';
import 'package:virtualtutor/pages/studentinfo_page.dart';
import 'package:virtualtutor/pages/teamname_page.dart';
import 'package:virtualtutor/pages/grade_page.dart';
import 'package:virtualtutor/pages/notification_page.dart';
import 'package:virtualtutor/pages/leavemanagement_page.dart';
import 'package:virtualtutor/pages/eventschedule_page.dart';
import 'package:virtualtutor/pages/attendancemanagement_page.dart';
import 'package:virtualtutor/pages/teachingresources_page.dart';
import 'package:virtualtutor/pages/examinfo_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200], // Use the same background color as the login page
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 32.0), // Add some spacing above the logo
          Container(
            padding: EdgeInsets.all(16.0),
            child: Image.asset('assets/university_logo.png', height: 120), // Adjust the height of the logo
          ),
          SizedBox(height: 16.0), // Add some spacing below the logo
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16.0),
              children: [
                MenuItem(
                  title: '課表資訊查詢',
                  icon: Icons.calendar_today,
                  color: Color(0xFFd17c82),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimetablePage()),
                    );
                  },// Light peach color
                ),
                MenuItem(
                  title: '成績管理',
                  icon: Icons.bar_chart,
                  color: Color(0xFFb68db5),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GradePage()),
                    );
                  },// Light apricot color
                ),
                MenuItem(
                  title: '考試資訊',
                  icon: Icons.notifications,
                  color: Color(0xFF8e80ce),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExamInfoPage()),
                    );
                  },// Light lemon color
                ),
                MenuItem(
                  title: '出勤管理',
                  icon: Icons.check_circle,
                  color: Color(0xFF9f9655),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AttendanceManagementPage()),
                    );
                  },// Light salmon color
                ),
                MenuItem(
                  title: '請假系統',
                  icon: Icons.airplane_ticket,
                  color: Color(0xFFb6cfa5),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LeaveManagementSystem()),
                    );
                  },// Light peach color
                ),
                MenuItem(
                  title: '活動日程',
                  icon: Icons.event,
                  color: Color(0xFFFFE8C1),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EventSchedulePage()),
                    );
                  },// Light apricot color
                ),
                MenuItem(
                  title: '教學資源分享',
                  icon: Icons.folder_shared,
                  color: Color(0xFF619bbf),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TeachingMaterialsPage()),
                    );
                  },// Light lemon color
                ),
                MenuItem(
                  title: '學生個人資訊',
                  icon: Icons.person,
                  color: Color(0xFFcd9c57),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentInfoPage()),
                    );
                  },// Light salmon color
                ),
                MenuItem(
                  title: '自動提醒學生事項',
                  icon: Icons.alarm,
                  color: Color(0xFF7db586),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NotificationPage()),
                    );
                  },// Light peach color
                ),
                MenuItem(
                  title: '組員名字',
                  icon: Icons.group,
                  color: Color(0xFFd2d783),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TeamNamePage()),
                    );
                  },// Light apricot color
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const MenuItem({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48.0),
            SizedBox(height: 8.0),
            Text(title, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}


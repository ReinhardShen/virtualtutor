import 'package:flutter/material.dart';

class AttendanceManagementPage extends StatefulWidget {
  @override
  _AttendanceManagementPageState createState() =>
      _AttendanceManagementPageState();
}

class _AttendanceManagementPageState extends State<AttendanceManagementPage> {
  String? selectedCourse;
  List<String> availableCourses = [
    '軟體工程 (三 2-4)',
    '實務專題 (二)',
    '平行處理 (二 5-7)',
    '資訊理論 (四 2-4)',
    'APP程式設計 (一 5-7)',
    '核心(三)創意與創新 (五 3-4)',
    '中文閱讀與表達 (一 1-2)',
  ];
  String? attendanceRecord;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[500],
        centerTitle: true,
        title: Text(
          '出勤管理',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'NotoSansTC',
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        color: Colors.orange[200],
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '選擇課程',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: DropdownButton<String>(
                value: selectedCourse,
                items: availableCourses.map((course) {
                  return DropdownMenuItem<String>(
                    value: course,
                    child: Text(course, style: TextStyle(color: Colors.black)),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCourse = value;
                  });
                },
                hint: Text(
                  '請選擇課程',
                  style: TextStyle(color: Colors.black),
                ),
                isExpanded: true,
                icon: Icon(Icons.arrow_drop_down),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (selectedCourse != null) {
                    DateTime currentTime = DateTime.now();
                    String formattedDateTime =
                        '${currentTime.year}-${currentTime.month.toString().padLeft(2, '0')}-${currentTime.day.toString().padLeft(2, '0')} ${currentTime.hour.toString().padLeft(2, '0')}:${currentTime.minute.toString().padLeft(2, '0')}';

                    attendanceRecord = '姓名：沈宗隆\n課程：$selectedCourse\n時間：$formattedDateTime\n出勤狀況：準時點到';
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '出勤',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            if (attendanceRecord != null)
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  attendanceRecord!,
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

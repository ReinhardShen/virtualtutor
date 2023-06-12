import 'package:flutter/material.dart';

class LeaveManagementSystem extends StatefulWidget {
  @override
  _LeaveManagementSystemState createState() => _LeaveManagementSystemState();
}

class _LeaveManagementSystemState extends State<LeaveManagementSystem> {
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
  final _reasonController = TextEditingController();
  List<String> addedLeaves = [];

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[500],
        centerTitle: true,
        title: Text(
          '請假系統',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'NotoSansTC',
          ),
        ),
        elevation: 0, // Remove shadow from the app bar
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedCourse,
                        items: availableCourses.map((course) {
                          return DropdownMenuItem<String>(
                            value: course,
                            child: Text(course),
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
                        iconSize: 24.0,
                        elevation: 16,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '請假原因',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _reasonController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.orange[100],
                labelText: '請輸入請假原因',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                if (selectedCourse != null && _reasonController.text.isNotEmpty) {
                  setState(() {
                    addedLeaves.add('$selectedCourse: ${_reasonController.text}');
                    selectedCourse = null;
                    _reasonController.clear();
                  });
                }
              },
              child: Text(
                '新增請假',
                style: TextStyle(fontSize: 18.0),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                minimumSize: Size.fromHeight(50.0),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '請假紀錄',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView.builder(
                itemCount: addedLeaves.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      addedLeaves[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

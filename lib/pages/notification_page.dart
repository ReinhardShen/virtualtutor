import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  TextEditingController titleController = TextEditingController();
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  List<String> notifications = [];

  void _addNotification() {
    if (titleController.text.isNotEmpty && selectedDate != null && selectedTime != null) {
      setState(() {
        String newNotification = titleController.text;
        String formattedDate =
            '${selectedDate!.year}-${selectedDate!.month.toString().padLeft(2, '0')}-${selectedDate!.day.toString().padLeft(2, '0')}';
        String formattedTime = selectedTime!.format(context);
        String notificationText = '$newNotification - $formattedDate $formattedTime';
        notifications.add(notificationText);
        titleController.clear();
        selectedDate = null;
        selectedTime = null;
      });
    }
  }

  Widget _buildDateTimePicker() {
    return ElevatedButton(
      onPressed: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: selectedDate ?? DateTime.now(),
          firstDate: DateTime(2021),
          lastDate: DateTime(2030),
        );

        if (pickedDate != null) {
          final TimeOfDay? pickedTime = await showTimePicker(
            context: context,
            initialTime: selectedTime ?? TimeOfDay.now(),
          );

          if (pickedTime != null) {
            setState(() {
              selectedDate = pickedDate;
              selectedTime = pickedTime;
            });
          }
        }
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 12.0),
      ),
      child: Text(
        selectedDate != null && selectedTime != null
            ? '${selectedDate!.year}-${selectedDate!.month.toString().padLeft(2, '0')}-${selectedDate!.day.toString().padLeft(2, '0')} ${selectedTime!.format(context)}'
            : '選擇日期和時間',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildNotificationList() {
    return Expanded(
      child: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 8.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.orange[100],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(notifications[index]),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '自動提醒學生事項',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0.0,
      ),
      backgroundColor: Colors.orange[200],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '請輸入提醒事項',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.orange[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                hintText: '請輸入提醒事項',
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Text(
                  '選擇日期和時間:',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 16.0),
                Expanded(child: _buildDateTimePicker()),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _addNotification,
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: Text(
                '設定提醒',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '已設定提醒',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            notifications.isEmpty ? Container() : _buildNotificationList(),
          ],
        ),
      ),
    );
  }
}

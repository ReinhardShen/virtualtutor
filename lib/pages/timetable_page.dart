import 'package:flutter/material.dart';

class TimetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        backgroundColor: Colors.orange[500],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '課表資訊查詢',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16.0), // Add some spacing
            Center(
              child: Text(
                '111學年度第2學期',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Table(
                border: TableBorder.all(color: Colors.white),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      buildTableCell(''),
                      buildTableCell('一'),
                      buildTableCell('二'),
                      buildTableCell('三'),
                      buildTableCell('四'),
                      buildTableCell('五'),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildMultilineTableCell('07:10\nM\n08:00', 3),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildMultilineTableCell('08:10\n1\n09:00', 3),
                      buildTableCell('中文閱讀與表達'),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildMultilineTableCell('09:10\n2\n10:00', 3),
                      buildTableCell('中文閱讀與表達'),
                      buildEmptyTableCell(),
                      buildTableCell('軟體工程'),
                      buildTableCell('資訊理論'),
                      buildEmptyTableCell(),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildMultilineTableCell('10:10\n3\n11:00', 3),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildTableCell('軟體工程'),
                      buildTableCell('資訊理論'),
                      buildTableCell('核心(三)創意與創新'),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildMultilineTableCell('11:10\n4\n12:00', 3),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildTableCell('軟體工程'),
                      buildTableCell('資訊理論'),
                      buildTableCell('核心(三)創意與創新'),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildMultilineTableCell('12:10\nA\n13:00', 3),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildMultilineTableCell('13:30\n5\n14:20', 3),
                      buildTableCell('APP程式設計(二)'),
                      buildTableCell('平行處理'),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildMultilineTableCell('14:30\n6\n15:20', 3),
                      buildTableCell('APP程式設計(二)'),
                      buildTableCell('平行處理'),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildMultilineTableCell('15:30\n7\n16:20', 3),
                      buildTableCell('APP程式設計(二)'),
                      buildTableCell('平行處理'),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildMultilineTableCell('16:30\n8\n17:20', 3),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildMultilineTableCell('17:30\n9\n18:20', 3),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                      buildEmptyTableCell(),
                    ],
                  ),
                  // Add more rows here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTableCell(String text, {bool isMultiline = false, bool isMerged = false}) {
    return TableCell(
      child: Container(
        padding: EdgeInsets.all(8.0),
        alignment: Alignment.center, // Center the text
        child: isMultiline ? Text(text, textAlign: TextAlign.center) : Text(text),
        decoration: BoxDecoration(
          color: isMerged ? Colors.orange[100] : null, // Set background color for merged cells
        ),
      ),
    );
  }


  Widget buildMultilineTableCell(String text, int lines) {
    return TableCell(
      child: Container(
        padding: EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          maxLines: lines,
        ),
      ),
    );
  }

  Widget buildEmptyTableCell() {
    return TableCell(
      child: Container(),
    );
  }
}

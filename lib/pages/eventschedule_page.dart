import 'package:flutter/material.dart';

class EventSchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[500],
        centerTitle: true,
        elevation: 0, // Remove the app bar shadow
        title: Text(
          '活動日程',
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
              EventCard(
                image: AssetImage('assets/event1.jpg'),
                title: '高雄女子排球校隊公開組',
                content: '球隊最新資訊\n'
                    '各位看過來\n'
                    '我們的練球時間更新啦\n! '
                    '接下來會在5/1星期一開始練球!\n'
                    '練習時間：\n'
                    '一、18：00~21：00-楠梓校區體育館\n'
                    '二、18：00~21：00-楠梓校區體育館\n'
                    '四、18：30~21：00-建工校區體育館\n'
                    '若有興趣的同學們 歡迎一起來練習！\n'
                    '球莖招募：\n'
                    '1. 配合球隊練球、比賽時間\n'
                    '2. 文書資料繳交\n'
                    '歡迎大家有趣的同學快來加入我們吧!',
              ),
              SizedBox(height: 20.0),
              EventCard(
                image: AssetImage('assets/event2.jpg'),
                title: '公開校隊女排招募球員、球經啦！！\n',
                content: '公開校隊女排招募會員、球經啦！\n'
                    '歡迎想要一起熱血打球的朋友們\n'
                    '快加入我們！來打球吧~\n'
                    '球經工作內容：\n'
                    '1、協助處理活動紀錄表、簽到表\n'
                    '2、比賽時到場計分、拍照',
              ),
              SizedBox(height: 20.0),
              EventCard(
                image: AssetImage('assets/event3.jpg'),
                title: '2023 LifeMaker人生創客大專青年營',
                content: '【#免費營隊｜LifeMaker人生創客大專青年營】\n'
                    '#CP值超高講師團隊 #開始搶票囉 #手刀報名\n'
                    '在一個闖蕩的年紀，不斷地探求自己的目標，\n'
                    '不計代價的放手一搏，嘗試各種可能性，在這浩瀚的人生殿堂裡，'
                    '你找到自我了嗎？\n'
                    '2023年LifeMaker大專青年營裡頭，我們將陪伴大家，\n'
                    '以四大學習主題，共同跳脫現有的舒適圈框架，創造新的可能性，\n'
                    '為自己的未來人生方向掌舵！\n'
                    '#一場不一樣的人生思維營隊\n'
                    '從人生設計思考、自我探索、社會參與、典範青年交流！\n'
                    '和各路夥伴們一同洞察自我，覺察人生方向，啟發自我潛能，\n'
                    '更能跳脫框架，創造有影響力的人生，做一個獨一無二的Life Maker！',
              ),
              SizedBox(height: 20.0),
              EventCard(
                image: AssetImage('assets/event4.jpg'),
                title: '<雁.雅>中山大學南雁國樂社×高科大典雅國樂社畢業聯合音樂會',
                content: '又到了一年一度的畢業季,而我們的畢業音樂會也預計於六月舉辦啦\n'
                    '這次很榮幸與中山大學南雁國樂社合作一起演出希望能帶給大家不一樣的音樂饗宴，\n'
                    '想不想聽到協奏們的帥氣演奏呢~\n'
                    '那就話不多說 心動不如馬上行動啦\n'
                    '我們在6/18（日）高雄市音樂館等你喔\n'
                    '演出資訊\n'
                    '時間：6/18（日）18：30入場 19：00開始\n'
                    '地點：高雄市音樂館（高雄市鹽埕區河西路99號）\n'
                    '購票資訊：100/張',
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}

class EventCard extends StatefulWidget {
  final ImageProvider image;
  final String title;
  final String content;

  EventCard({required this.image, required this.title, required this.content});

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.orange[100],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 10.0),
          GestureDetector(
            onTap: () {
              setState(() {
                expanded = !expanded;
              });
            },
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: widget.image,
                    width: double.infinity,
                  ),
                ),
                SizedBox(height: 1.0),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        expanded = !expanded;
                      });
                    },
                    icon: Icon(expanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down),
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          if (expanded) ...[
            SizedBox(height: 10.0),
            Text(widget.content),
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
                '報名',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(height: 10.0), // Added extra spacing after 報名 button
          ],
        ],
      ),
    );
  }
}

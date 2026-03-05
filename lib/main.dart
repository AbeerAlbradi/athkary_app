// created by Abeer Albradi - Athkary app

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أذكاري',
      theme: ThemeData(fontFamily: 'Cairo'),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {

  var athkar = [
    {
      "title": "أذكار الصباح",
      "content": [
        {"text": "اللهم بك أصبحنا وبك أمسينا وبك نحيا وبك نموت وإليك النشور", "count": 1},
        {"text": "أصبحنا وأصبح الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير", "count": 1},
        {"text": "اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك ووعدك ما استطعت", "count": 1},
        {"text": "اللهم إني أصبحت أشهدك وأشهد حملة عرشك، وملائكتك وجميع خلقك، أنك أنت الله لا إله إلا أنت وحده لا شريك لك", "count": 4},
        {"text": "حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم", "count": 7},
        {"text": "بسم الله الذي لا يضر مع اسمه شيء في الأرض ولا في السماء وهو السميع العليم", "count": 3},
        {"text": "يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله ولا تكلني إلى نفسي طرفة عين", "count": 1},
        {"text": " لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير", "count": 100},
        {"text": "سبحان الله وبحمده", "count": 100},
        {"text": "اللهم صلِّ وسلم على نبينا محمد", "count": 10},
      ]
    },
    {
      "title": "أذكار المساء",
      "content": [
        {"text": "اللهم بك أمسينا وبك أصبحنا وبك نحيا وبك نموت وإليك المصير", "count": 1},
        {"text": "أمسينا وأمسى الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شئ قدير", "count": 1},
        {"text": "اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك ووعدك ما استطعت", "count": 1},
        {"text": "اللهم إني أمسيت أشهدك وأشهد حملة عرشك، و ملائكتك وجميع خلقك، أنك أنت الله لا إله إلا أنت وحدك لا شريك لك", "count": 1},
        {"text": " حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم ", "count": 7},
        {"text": "بسم الله الذي لا يضر مع اسمه شيء في الأرض ولا في السماء وهو السميع العليم", "count": 3},
        {"text": "رضيت بالله ربا، وبالإسلام دينا، وبمحمد صلى الله عليه وسلم نبيا", "count": 3},
        {"text": "يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله ولا تكلني إلى نفسي طرفة عين", "count": 1},
        {"text": " لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير", "count": 100},
        {"text": "سبحان الله وبحمده", "count": 100},
        {"text": "أعوذ بكلمات الله التامات من شر ما خلق", "count": 3},
      ]
    },
    {
      "title": "أذكار النوم",
      "content": [
        {"text": "باسمك ربي وضعت جنبي، وبك أرفعه، فإن أمسكت نفسي فارحمها، وإن أرسلتها فاحفظها", "count": 1},
        {"text": "اللهم قني عذابك يوم تبعث عبادك", "count": 3},
        {"text": "الحمد لله الذي أطعمنا وسقانا وكفانا وآوانا فكم ممن لا كافي له ولا مؤوي", "count": 1},
        {"text": "اللهم أسلمت نفسي إليك، وفوّضت أمري إليك، ووجهت وجهي إليك، وألجأت ظهري إليك", "count": 1},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF16213D), 
      appBar: AppBar(
        title: Text("أذكاري", style: TextStyle(color: Color(0xFFF1F5F9), fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Color(0xFF16213D),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20),
        itemCount: athkar.length,
        itemBuilder: (ctx, index) { 
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
            child: InkWell(
              onTap: () {
                Navigator.push(ctx, MaterialPageRoute(
                  builder: (c) => AthkarPage( 
                    title: athkar[index]['title'].toString(),
                    content: athkar[index]['content'] as List,
                  ),
                ));
              },
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFFF1F5F9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5)),
                  ],
                ),
                child: Center(
                  child: Text(
                    athkar[index]['title'].toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF16213D)),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class AthkarPage extends StatefulWidget {
  var title; 
  var content;

  AthkarPage({this.title, this.content}); 
  @override
  _AthkarPageState createState() => _AthkarPageState();
}

class _AthkarPageState extends State<AthkarPage> {
  List<int> counters = [];

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < widget.content.length; i++) {
      counters.add(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F5F9),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xFF16213D),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 15),
        itemCount: widget.content.length,
        itemBuilder: (context, index) {
          var item = widget.content[index]; 
          var target = item['count'];
          var isDone = counters[index] >= target;

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GestureDetector( 
              onTap: () {
                if (counters[index] < target) {
                  setState(() {
                    counters[index]++;
                  });
                }
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: isDone ? Colors.grey[300] : Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: isDone ? Border.all(color: Color(0xFF16213D)) : null,
                ),
                child: Column(
                  children: [
                    Text(
                      item['text'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF16213D),
                        decoration: isDone ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                        color: isDone ? Colors.green : Color(0xFF16213D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "${counters[index]} / $target",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
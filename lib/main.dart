//created by Abeer Albradi, Athkary App
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أذكاري',
      theme: ThemeData(fontFamily: 'Cairo'), 
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  final List<Map<String, dynamic>> athkar = const [
    {
      "title": "أذكار الصباح",
      "content": [
        {"text": "اللهم بك أصبحنا وبك أمسينا وبك نحيا وبك نموت وإليك النشور", "count": 1},
        {"text": "أصبحنا وأصبح الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، رب أسألك خير ما في هذا اليوم وخير ما بعده، وأعوذ بك من شر ما في هذا اليوم وشر ما بعده، رب أعوذ بك من الكسل، وسوء الكبر، رب أعوذ بك من عذاب في النار وعذاب في القبر", "count": 1},
        {"text": "اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك ووعدك ما استطعت، أعوذ بك من شر ما صنعت، أبوء لك بنعمتك علي، وأبوء بذنبي فاغفر لي فإنه لا يغفر الذنوب إلا أنت", "count": 1},
        {"text": "اللهم إني أصبحت أشهدك وأشهد حملة عرشك، وملائكتك وجميع خلقك، أنك أنت الله لا إله إلا أنت وحدك لا شريك لك، وأن محمدا عبدك ورسولك", "count": 4},
        {"text": "حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم", "count": 7},
        {"text": "اللهم ما أصبح بي من نعمة أو بأحد من خلقك فمنك وحدك لا شريك لك، فلك الحمد ولك الشكر", "count": 1},
        {"text": "اللهم عافني في بدني، اللهم عافني في سمعي، اللهم عافني في بصري، لا إله إلا أنت . اللهم إني أعوذ بك من الكفر، والفقر، وأعوذ بك من عذاب القبر، لا إله إلا أنت", "count": 3},
        {"text": "اللهم إني أسألك العفو والعافية في الدنيا والآخره، اللهم إني أسألك العفو والعافية، في ديني ودنيااي وأهلي، ومالي، اللهم استر عوراتي، وآمن روعاتي، اللهم احفظني من بين يدي، و من خلفي، و عن يميني، و عن شمالي، و من فوقي، وأعوذ بعظمتك أن أغتال من تحتي", "count": 1},
        {"text": "اللهم عالم الغيب والشهادة فاطر السموات والأرض، رب كل شيء ومليكه، أشهد أن لا إله إلا أنت، أعوذ بك من شر نفسي، ومن شر الشيطان وشركه، وأن أقترف على نفسي سوءاً، أو أجره إلى مسلم", "count": 1},
        {"text": "بسم الله الذي لا يضر مع اسمه شيء في الأرض ولا في السماء وهو السميع العليم", "count": 3},
        {"text": "يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله ولا تكلني إلى نفسي طرفة عين", "count": 1},
        {"text": "أصبحنا وأصبح الملك لله رب العالمين، اللهم إني أسألك خير هذا اليوم، فتحه، ونصره ونوره وبركته هداه، وأعوذ بك من شر ما فيه وشر ما بعده", "count": 1},
        {"text": "أصبحنا على فطرة الإسلام وعلى كلمة الإخلاص، وعلى دين نبينا محمد صلى الله عليه وسلم، وعلى ملة أبينا إبراهيم حنيفاً مسلماً وماكان من المشركين", "count": 1},
        {"text":  " لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير", "count": 100},
        {"text": "سبحان الله وبحمده، عدد خلقه، ورضا نفسه، وزنة عرشه، ومداد كلماته", "count": 3},
        {"text": "سبحان الله وبحمده", "count": 100},
        {"text": "اللهم صلِّ وسلم على نبينا محمد", "count": 10},
      ]
    },
    {
      "title": "أذكار المساء",
      "content": [
        {"text": "اللهم بك أمسينا وبك أصبحنا وبك نحيا وبك نموت وإليك المصير", "count": 1},
        {"text": "أمسينا وأمسى الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شئ قدير، رب أسألك خير ما في هذه الليلة وخير ما بعدها، وأعوذ بك من شر ما في هذه الليلة وشر ما بعدها، رب أعوذ بك من الكسل، و سوء الكبر، رب أعوذ بك من عذاب في النار وعذاب في القبر ", "count": 1},
        {"text": "اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك ووعدك ما استطعت، أعوذ بك من شر ما صنعت، أبوء لك بنعمتك علي، وأبوء بذنبي فاغفر لي فإنه لا يغفر الذنوب إلا أنت", "count": 1},
        {"text": "اللهم إني أمسيت أشهدك وأشهد حملة عرشك، و ملائكتك وجميع خلقك، أنك أنت الله لا إله إلا أنت وحدك لا شريك لك، وأن محمدا عبدك ورسولك", "count": 1},
        {"text": "اللهم ما أمسى بي من نعمة أو بأحد من خلقك فمنك وحدك لا شريك لك، فلك الحمد ولك الشكر", "count": 1},
        {"text": "اللهم عافني في بدني، اللهم عافني في سمعي، اللهم عافني في بصري، لا إله إلا أنت، اللهم إني أعوذ بك من الكفر، والفقر، وأعوذ بك من عذاب القبر، لا إله إلا أنت " , "count": 3},
        {"text": " حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم ", "count": 7},
        {"text": "اللهم إني أسألك العفو والعافية في الدنيا والأخره، اللهم إني أسألك العفو والعافية، في ديني ودنياي وأهلي، ومالي، اللهم استر عوراتي، وآمن روعاتي، اللهم احفظني من بين يدي، و من خلفي، و عن يميني، وعن شمالي، ومن فوقي، وأعوذ بعظمتك أن أغتال من تحتي", "count": 1},
        {"text": "اللهم عالم الغيب والشهادة فاطر السموات والأرض، رب كل شيء مليكه، أشهد أن لا إله إلا أنت، أعوذ بك من شر نفسي، ومن شر الشيطان وشركه، وأن أقترف على نفسي سوءاً ، أو أجره إلى مسلم", "count": 1},
        {"text": "بسم الله الذي لا يضر مع اسمه شيء في الأرض ولا في السماء وهو السميع العليم", "count": 3},
        {"text": "رضيت بالله ربا، وبالإسلام دينا، وبمحمد صلى الله عليه وسلم نبيا", "count": 3},
        {"text": "يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله ولا تكلني إلى نفسي طرفة عين", "count": 1},
        {"text": "أمسينا وأمسى الملك لله رب العالمين، اللهم إني أسألك خير هذه الليله، فتحها، ونصرها ونورها وبركتها وهداها، وأعوذ بك من شر ما فيها وشر ما بعدها", "count": 1},
        {"text": "أمسينا على فطرة الإسلام، وعلى كلمة الإخلاص، و على دين نبينا محمد صلى الله عليه وسلم، وعلى ملة أبينا إبراهيم، حنيفاً مسلماً وما كان من المشركين", "count": 1},
        {"text": " لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير", "count": 100},
        {"text": "سبحان الله وبحمده", "count": 100},
        {"text": "أعوذ بكلمات الله التامات من شر ما خلق", "count": 3},
      ]
    },

    {
      "title": "أذكار النوم",
      "content": [
        {"text": "باسمك ربي وضعت جنبي، وبك أرفعه، فإن أمسكت نفسي فارحمها، وإن أرسلتها فاحفظها بما تحفظ به عبادك الصالحين", "count": 1},
        {"text": "اللهم قني عذابك يوم تبعث عبادك", "count": 3},
        {"text": "الحمد لله الذي أطعمنا وسقانا وكفانا وآوانا فكم ممن لا كافي له ولا مؤوي", "count": 1},
        {"text": "اللهم إنك خلقت نفسي وأنت توفَّاها، لك مماتها ومحياها، إن أحييتها فاحفظها، وإن أمتَّها فاغفر لها، اللهم إني أسألك العافية", "count": 1},
        {"text": "اللهم رب السماوات السبع ورب العرش العظيم، ربنا ورب كل شيء، فالق الحب والنوى ومنزل التوراة والإنجيل والفرقان، أعوذ بك من شرّ كل شيء أنت آخذ بناصيته، اللهم أنت الأول فليس قبلك شيء، وأنت الآخر فليس بعدك شيء، وأنت الظاهر فليس فوقك شيء، وأنت الباطن فليس دونك شيء، أقض عنّا الدَّين وأغننا من الفقر ", "count": 1},
        {"text": "اللهم أسلمت نفسي إليك، وفوّضت أمري إليك، ووجهت وجهي إليك، وألجأت ظهري إليك، رغبة ورهبة إليك، لا ملجأ ولا منجا منك إلا إليك، آمنت بكتابك الذي أنزلت، وبنبيّك الذي أرسلت", "count": 1},
      ]
    },
    {
      "title":"ذكر الخروج من المنزل",
      "content": [
        {"text":"بسم الله توكلت على الله ولا حول ولا قوة إلا بالله اللهم إني أعوذ بك أن أَضلّ أو أُضلّ أو أَزلّ أو أُزلّ أو أَظلم أو أُظلم أو أَجهل أو يُجهل عليّ","count":1}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF16213D),
      appBar: AppBar(
        title: const Text("أذكاري", style: TextStyle(color: Color(0xFFF1F5F9), fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: const Color(0xFF16213D),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20),
        itemCount: athkar.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => AthkarPage(
                    title: athkar[index]['title'],
                    content: List<Map<String, dynamic>>.from(athkar[index]['content']),
                  ),
                ));
              },
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F5F9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 10, offset: const Offset(0, 5)),
                  ],
                ),
                child: Center(
                  child: Text(
                    athkar[index]['title'],
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF16213D)),
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
  final String title;
  final List<Map<String, dynamic>> content;

  const AthkarPage({super.key, required this.title, required this.content});

  @override
  _AthkarPageState createState() => _AthkarPageState();
}

class _AthkarPageState extends State<AthkarPage> {

  List<int> counters = [];

  @override
  void initState() {
    super.initState();
    counters = List<int>.filled(widget.content.length, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(color: Color(0xFFF1F5F9))),
        backgroundColor: const Color(0xFF16213D),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFFF1F5F9)),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 15),
        itemCount: widget.content.length,
        itemBuilder: (context, index) {
   
          var target = widget.content[index]['count']; 
          var isFinished = counters[index] >= target;

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: InkWell(
              onTap: () {
                if (counters[index] < target) {
                  setState(() {
                    counters[index]++;
                  });
                }
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 400),
                decoration: BoxDecoration(
                  color: isFinished ? const Color(0xFF16213D).withOpacity(0.1) : Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: isFinished ? const Color(0xFF16213D) : Colors.transparent, width: 2),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 4))
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Text(
                        widget.content[index]['text'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 19,
                          height: 1.7,
                          color: const Color(0xFF16213D),
                          fontWeight: FontWeight.w500,
                          decoration: isFinished ? TextDecoration.lineThrough : null,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        decoration: BoxDecoration(
                          color: isFinished ? Colors.green[700] : const Color(0xFF16213D),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "${counters[index]} / $target",
                          style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
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
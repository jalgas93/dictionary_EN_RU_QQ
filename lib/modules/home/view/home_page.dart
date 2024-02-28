import 'package:flutter/material.dart';
import 'package:list_english_words/list_english_words.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

var text;

List<String> listString = [
  "a",
  "able",
  "aboard",
  "about",
  "above",
  "absent",
  "accept",
  "accident",
  "account",
  "ache",
  "aching",
  "acorn",
  "acre",
  "across",
  "act",
  "acts",
];
Map<String, dynamic> map = {
  'a': {'qq': "a", 'ru': "a"},
  'able': {'qq': "способный", 'ru': "способный"},
  'aboard': {'qq': "на борту", 'ru': "на борту"},
  'about': {'qq': "о", 'ru': "о"},
  'above': {'qq': "выше", 'ru': "выше"},
  'absent': {'qq': "отсутствовать", 'ru': "отсутствовать"},
  'accept': {'qq': "принимать", 'ru': "принимать"},
  'accident': {'qq': "несчастный случай", 'ru': "несчастный случай"},
  'account': {'qq': "счет", 'ru': "счет"},
  'ache': {'qq': "боль", 'ru': "боль"},
  'aching': {'qq': "болящий", 'ru': "болящий"},
  'acorn': {'qq': "жёлудь", 'ru': "жёлудь"},
  'acre': {'qq': "акр", 'ru': "акр"},
  'across': {'qq': "через", 'ru': "через"},
  'act': {'qq': "действие", 'ru': "действие"},
  'acts': {'qq': "акты", 'ru': "акты"},
};

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'RU-QQ',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: listString.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                print('${listString[index]}');
                setState(() {
                  text = text == listString[index] ? 0 : listString[index];
                });

                print(text);
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  padding: EdgeInsets.only(right: 8),
                  child: text == listString[index]
                      ? Container(
                          padding:
                              EdgeInsets.only(left: 16, top: 16, right: 16),
                          height: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Qaraqalpaqsha',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '${map[text]['qq']}',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              Divider(),
                              Text(
                                'Russian',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '${map[text]['ru']}',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 10)
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(3, 5),
                                blurRadius: 5,
                                color: Colors.black26,
                              )
                            ],
                          ),
                        )
                      : Text(
                          '${listString[index]}',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

/*
 ListView.builder(
              shrinkWrap: true,
              itemCount: map.keys.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    print('${map.keys}');
                  },
                  child: Text(
                    '${map.keys.join('\n')}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                );
              },
            ),
 */
/*
ListView(
          children: [

            Text(
              '${map['acre']['qq']}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              '${map['acre']['ru']}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            )
          ],
        ),
 */

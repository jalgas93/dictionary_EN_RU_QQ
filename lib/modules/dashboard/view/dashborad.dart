/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jalgasssss/generated/l10n.dart';
import '../../../helpers/app_colors.dart';
import '../bloc/local_bloc.dart';
import '../bloc/local_bloc.dart';
import '../bloc/local_bloc.dart';
import '../bloc/local_bloc.dart';
import '../bloc/local_bloc.dart';
import '../bloc/local_event.dart';
import '../bloc/local_state.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController _textEditingControllerTop = TextEditingController();
  TextEditingController _textEditingControllerBottom = TextEditingController();

  //final appBlocLocal = LocalBloc();
  LocalBloc get _bloc => BlocProvider.of<LocalBloc>(context);
  String selectedValueTop = "en";
  String selectedValueBottom = "kz";

  @override
  void dispose() {
    // appBlocLocal.close();
    _textEditingControllerTop.dispose();
    _textEditingControllerBottom.dispose();
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Anglisshe"), value: "en"),
      DropdownMenuItem(child: Text("Orissha"), value: "ru"),
      DropdownMenuItem(child: Text("Uzbekshe"), value: "uz"),
      DropdownMenuItem(child: Text("Kazaxsha"), value: "kz"),
      DropdownMenuItem(child: Text("Qaraqalpaqsha"), value: "qq"),
    ];
    return menuItems;
  }

  List<Map<String, dynamic>> list = [
    {'one': "Один"},
    {'two': "Два"},
    {'three': "Три"},
    {'four': "Четире"},
    {'five': "Пять"},
    {'six': "Шесть"},
    {'seven': "Семь"}
  ];


  Map<String, dynamic> map = {
    'one': {'qq':"bir",'ru':"один"},
    'two': "Два",
    'three': "Три",
    'four': "Четире",
    'five': "Пять",
    'six': "Шесть",
    'seven': "Семь"
  };

  void test() {
    // list.where((element) => element.keys.contains('one'));
   // print('${list.where((element) => element.containsKey('one'))}');
  }
  void testMap(){
    var one = 'one';
    print('${map[one]['qq']}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<LocalBloc, LocalState>(
        bloc: _bloc,
        builder: (BuildContext context, dynamic state) {
          if (state is SuccessLocal) {
            return Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text('Привет'),
                  Text(S.of(context).clear),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffF5F5F5), width: 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          filled: true,
                          fillColor: Color(0xffF5F5F5).withOpacity(0.5),
                        ),
                        validator: (value) =>
                            value == null ? "Select a country" : null,
                        dropdownColor: Colors.white,
                        value: selectedValueTop,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValueTop = newValue!;
                            _bloc.add(LocalLanguage(
                                local_lang: Locale(selectedValueTop, '')));
                          });
                        },
                        items: dropdownItems),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: TextFormField(
                      maxLines: 6,
                      autofocus: false,
                      autofillHints: [AutofillHints.telephoneNumber],
                      controller: _textEditingControllerTop,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.all(15.0),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Начните писать текст',
                        hintStyle: const TextStyle(
                          color: AppColors.unselectedWidget,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5.0)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (value) {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffF5F5F5), width: 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          filled: true,
                          fillColor: Color(0xffF5F5F5).withOpacity(0.5),
                        ),
                        validator: (value) =>
                            value == null ? "Select a country" : null,
                        dropdownColor: Colors.white,
                        value: selectedValueBottom,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValueBottom = newValue!;
                          });
                        },
                        items: dropdownItems),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: TextFormField(
                      maxLines: 6,
                      autofocus: false,
                      autofillHints: [AutofillHints.telephoneNumber],
                      controller: _textEditingControllerBottom,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.all(15.0),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Результат',
                        hintStyle: const TextStyle(
                          color: AppColors.unselectedWidget,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5.0)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (value) {},
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: FloatingActionButton(
                      backgroundColor: Color(0xFF2c3e50),
                      child: Text(
                        'Переводить',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
     BlocProvider.of<LocalBloc>(context).add(
                            LocalLanguage(local_lang: Locale(selectedValueTop)));

                        test();
                        testMap();
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    padding: const EdgeInsets.only(left: 16),
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(child: Icon(Icons.book_outlined)),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  '- Привет, милый. Я сейчас стою в Пантеоне.',
                                  overflow: TextOverflow.visible,
                                  maxLines: 3,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "- Hi, honey, I'm standing in the Pantheon.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            CircleAvatar(child: Icon(Icons.book_outlined)),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  '- Привет! - улыбнулся Джейми. - Я вернулся.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "- Jamie grinned at him Hello! I'm back.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            CircleAvatar(child: Icon(Icons.book_outlined)),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  '- Всем привет с Вишневого Фестиваля Гримли!',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "- Salutations, from the Grimley Cherry Festival!",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            CircleAvatar(child: Icon(Icons.book_outlined)),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  '- Ты ей передал от меня привет? - спрашиваю.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "- Did you give her my regards? I asked him.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            CircleAvatar(child: Icon(Icons.book_outlined)),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  '- Привет, милый. Я сейчас стою в Пантеоне.',
                                  overflow: TextOverflow.visible,
                                  maxLines: 3,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "- Hi, honey, I'm standing in the Pantheon.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            CircleAvatar(child: Icon(Icons.book_outlined)),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  '- Привет! - улыбнулся Джейми. - Я вернулся.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "- Jamie grinned at him Hello! I'm back.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            CircleAvatar(child: Icon(Icons.book_outlined)),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  '- Всем привет с Вишневого Фестиваля Гримли!',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "- Salutations, from the Grimley Cherry Festival!",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            CircleAvatar(child: Icon(Icons.book_outlined)),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  '- Ты ей передал от меня привет? - спрашиваю.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "- Did you give her my regards? I asked him.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
*/

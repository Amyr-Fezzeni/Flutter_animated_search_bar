
import 'package:flutter/material.dart';
import 'package:search_bar_animated/search_bar_animated.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = [
    "Flutter",
    "Twitter",
    "Facebook",
    "Google",
    "Instagram",
    "Youtube",
  ];

  TextEditingController textController = TextEditingController();
  String value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedSearchBar(
          backgroundColor: Colors.transparent,
          buttonColor: Colors.white,
          width: MediaQuery.of(context).size.width,
          submitButtonColor: Colors.white,
          textStyle: const TextStyle(color: Colors.white),
          buttonIcon: const Icon(
            Icons.search,
          ),
          duration: const Duration(milliseconds: 700),
          submitIcon: const Icon(Icons.arrow_back_rounded),
          animationAlignment: AnimationAlignment.right,
          onSubmit: () {
            setState(() {
              value = textController.text;
            });
          },
          searchList: list,
          searchQueryBuilder: (query, list) => list.where((item) {
            return item!.toString().toLowerCase().contains(query.toLowerCase());
          }).toList(),
          textController: textController,
          overlaySearchListItemBuilder: (dynamic item) => Container(
            padding: const EdgeInsets.all(8),
            child: Text(
              item,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          onItemSelected: (dynamic item) {
            textController.value = textController.value.copyWith(
              text: item.toString(),
            );
          },
          overlaySearchListHeight: 100,
        ),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            AnimatedSearchBar(
              shadow: const [
                BoxShadow(
                    color: Colors.black38, blurRadius: 6, offset: Offset(0, 6))
              ],
              backgroundColor: Colors.white,
              buttonColor: Colors.blue,
              width: MediaQuery.of(context).size.width * 0.7,
              submitButtonColor: Colors.blue,
              textStyle: const TextStyle(color: Colors.blue),
              buttonIcon: const Icon(
                Icons.search,
              ),
              duration: const Duration(milliseconds: 1000),
              submitIcon: const Icon(Icons.send),
              animationAlignment: AnimationAlignment.left,
              onSubmit: () {
                setState(() {
                  value = textController.text;
                });
              },
              searchList: list,
              searchQueryBuilder: (query, list) => list.where((item) {
                return item!
                    .toString()
                    .toLowerCase()
                    .contains(query.toLowerCase());
              }).toList(),
              textController: textController,
              overlaySearchListItemBuilder: (dynamic item) => Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  item,
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
              onItemSelected: (dynamic item) {
                textController.value = textController.value.copyWith(
                  text: item.toString(),
                );
              },
              overlaySearchListHeight: 100,
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                value,
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

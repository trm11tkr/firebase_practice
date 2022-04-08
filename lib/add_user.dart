import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser extends StatelessWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<UserTextController> textControllerList = [
      UserTextController(hintText: 'callName'),
      UserTextController(hintText: 'firstName'),
      UserTextController(hintText: 'lastName'),
      UserTextController(hintText: 'gender'),
      UserTextController(hintText: 'age'),
    ];

    void addUser(callName, firstName, lastName, gender, age) async {
      final DocumentReference<Map<String, dynamic>> docRef =
          FirebaseFirestore.instance.collection('users').doc('userInfo');
      await docRef.set(
        {
          callName.toString(): {
            "firstName": firstName.toString(),
            "lastName": lastName.toString(),
            "gender": gender.toString(),
            "age": age.toString(),
          }
        },
        SetOptions(merge: true),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('add user'),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          itemCount: 5,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return TextField(
              controller: textControllerList[index],
              decoration:
                  InputDecoration(hintText: textControllerList[index].hint),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addUser(
            textControllerList[0].text,
            textControllerList[1].text,
            textControllerList[2].text,
            textControllerList[3].text,
            textControllerList[4].text,
          );
          textControllerList[0].clear();
          textControllerList[1].clear();
          textControllerList[2].clear();
          textControllerList[3].clear();
          textControllerList[4].clear();

          Navigator.of(context).pop();
          },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class UserTextController extends TextEditingController {
  UserTextController({required this.hintText});

  final String hintText;
  final controller = TextEditingController();

  String get hint => hintText;

  @override
  // widgetの破棄時にコントローラも破棄
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

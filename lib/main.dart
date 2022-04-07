import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final textController = TextEditingController();
  @override
  // widgetの破棄時にコントローラも破棄
  void dispose() {
    textController.dispose();
    super.dispose();
  }


  final List<Map<String,Map<String, dynamic>>> userList = [];


  Future<List<Map<String,Map<String, dynamic>>>> getFirestoreUser() async  {
    // final CollectionReference users = FirebaseFirestore.instance.collection('users');
    final DocumentReference<Map<String, dynamic>>  docRef = FirebaseFirestore.instance.collection('users').doc('userInfo');
    final DocumentSnapshot<Map<String, dynamic>> docSna = await docRef.get();
    final Map<String, dynamic> data = docSna.data()!;
    if(data.isNotEmpty) {
      data.forEach((key, value) {
        setState(() {
          userList.add({
            key.toString() : {
              "firstName" : value["firstName"].toString(),
              "lastName" : value["lastName"].toString(),
              "gender" : value["gender"].toString(),
              "age" : value["age"].toString(),
            },
          });
        });
      });
    }
    return userList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.separated(
            itemCount: userList.length,
            itemBuilder:  (context, index) {
              final Map<String, Map<String, dynamic>> user = userList[index];
              final String callName = user.keys.first.toString();
              return ListTile(
                tileColor: Colors.greenAccent,
                title: Text(callName),
                subtitle: Column(
                  children: [
                    Text('${user.values.first['firstName']} ${user.values.first['lastName']}'),
                    Text(user.values.first['gender'].toString()),
                    Text(user.values.first['age'].toString()),
                  ],
                ),
              );
            },

          separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 10);
              },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getFirestoreUser,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

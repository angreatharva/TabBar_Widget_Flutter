import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length:3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar"),
            bottom: TabBar(

            tabs:[
              Tab(icon: Icon(Icons.account_circle,),text: "STATUS",),
              Tab(icon: Icon(Icons.chat,),text: "CHATS",),
              Tab(icon: Icon(Icons.call,),text: "CALLS",),
            ]),
          ),
          body:TabBarView(
            children: [
              Container(
                child: Center(child: Text("STATUS",style: TextStyle(fontSize: 32),)),
              ),
              Container(
                child: Center(child: Text("CHATS",style: TextStyle(fontSize: 32),)),
              ),
              Container(
                child: Center(child: Text("CALLS",style: TextStyle(fontSize: 32),)),
              ),
            ],
          )
        )
    );
  }
}

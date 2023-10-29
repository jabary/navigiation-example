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

        home: FirstPage(title: "First Page")
    );
  }
}

class FirstPage extends StatelessWidget{
  final String title;
  FirstPage({required this.title});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text(title),),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage(title: "Second Page")));
            },
            child: Text("Go to Page two"),
          ),
        ),
      );
  }

}

class SecondPage extends StatelessWidget{
  final String title;
  SecondPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ThirdPage(title: "Third page")));
          },
          child: Text("Go to Page three"),
        ),
      ),
    );
  }

}
class ThirdPage extends StatelessWidget{
  final String title;
  ThirdPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Go back"),
        ),
      ),
    );
  }

}

class ForthPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text("test");
  }

}



//import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//import 'dart:convert';
//
//import '../widgets/app_text.dart';
//import './profile_screen.dart';
//
//class HomeScreen extends StatefulWidget {
//
//  @override
//  State<StatefulWidget> createState() {
//    return HomeScreenState();
//  }
//
//}
//
//class HomeScreenState extends State {
//
//  String name = 'mohamed';
//
//  List data = [];
//
//  @override
//  void initState() {
//    getPosts();
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Home Screen'),
//      ),
//      body: data.isEmpty ?
//      Center(
//        child: CircularProgressIndicator(),
//      ) :
//      buildBody(context),
//      drawer: Drawer(
//        child: Text('menu'),
//      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.add),
//        onPressed: () {
//          print('asdasd');
//        },
//      ),
//    );
//  }
//
//  getPosts () {
//
//    http.get('https://jsonplaceholder.typicode.com/posts').then((http.Response response) {
//
//      List data = (jsonDecode(response.body));
//
//      setState(() {
//        this.data = data;
//      });
//
//    });
//
//  }
//
//  Widget buildBody (context) {
//
//    return ListView(
//      children: this.data.map((item) {
//        return Dismissible(
//          direction: DismissDirection.horizontal,
//          background: Container(
//            color: Colors.red,
//          ),
//          key: Key(item['title']),
//          child: Column(
//            children: <Widget>[
//              Hero(
//                tag: item['title'],
//                child: Image.asset('assets/kitten.png',
//                  width: 100,
//                  height: 100,
//                ),
//              ),
//              MaterialButton(
//                child: Text(item['title']),
//                onPressed: () {
//                  Navigator.of(context).push(
//                      MaterialPageRoute(
//                          builder: (context) {
//                            return ProfileScreen(
//                              text: item['title'],
//                            );
//                          }
//                      )
//                  );
//                },
//              ),
//            ],
//          ),
//        );
//      }).toList(),
//    );
//
////    return Column(
////      children: <Widget>[
////        Text(name),
////        MaterialButton(
////          child: Text('go to profile screen'),
////          onPressed: () {
////            Navigator.of(context).push(
////                MaterialPageRoute(
////                    builder: (context) {
////                      return ProfileScreen(
////                        text: 'This from home screen',
////                      );
////                    }
////                )
////            );
////          },
////        ),
////        MaterialButton(
////          child: Text('Change name'),
////          color: Colors.redAccent,
////          onPressed: () {
////            setState(() {
////              name = 'Ahmed';
////            });
////          },
////        )
////      ],
////    );
//
//  }
//
//}
//
//
////class HomeScreen extends StatelessWidget {
////
////  String name = 'mohamed';
////
////  @override
////  Widget build(BuildContext context) {
////    return Scaffold(
////      appBar: AppBar(
////        title: Text('Home Screen'),
////      ),
////      body: Column(
////        children: <Widget>[
////          Text(name),
////          MaterialButton(
////            child: Text('go to profile screen'),
////            onPressed: () {
////              Navigator.of(context).push(
////                MaterialPageRoute(
////                  builder: (context) {
////                    return ProfileScreen(
////                      text: 'This from home screen',
////                    );
////                  }
////                )
////              );
////            },
////          ),
////          MaterialButton(
////            child: Text('Change name'),
////            color: Colors.redAccent,
////            onPressed: () {
////              name = 'Ahmed';
////            },
////          )
////        ],
////      ),
////      drawer: Drawer(
////        child: Text('menu'),
////      ),
////      floatingActionButton: FloatingActionButton(
////        child: Icon(Icons.add),
////        onPressed: () {
////          print('asdasd');
////        },
////      ),
////    );
////  }
////
////}
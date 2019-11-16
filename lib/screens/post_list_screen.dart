import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostList extends StatefulWidget {
  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  var userLists = [];

  @override
  void initState(){
    super.initState();
    this.getData();
  }

  Future<List> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull('https://jsonplaceholder.typicode.com/users'),
        headers: {
          "Accept": "application/json",
        });
    List data = json.decode(response.body);
    setState(() {
      this.userLists = data;
    });
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post List'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RaisedButton(
            child: Text('get list'),
            onPressed: () {
              getData();
              //do something
            },
          ),
          listViewPost(context),
        ],
      ),
    );
  }

  Widget listViewPost(context) {
    return Expanded(
      child: ListView.builder(
        itemCount: this.userLists == null ? 0 : this.userLists.length,
        itemBuilder: (context, index) {
          return _listItemBuilder(this.userLists[index]['name']);
        },
      ),
    );
  }

  Widget _listItemBuilder(String title) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Text(title),
      ),
    );
  }
}

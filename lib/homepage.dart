import 'dart:convert';

import 'package:crudapi/addpage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'detailview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //function get api
  Future getData() async {
    String url = 'https://herryprasetyo.my.id/latihan/get_data.php';
    var response = await http.get(
      Uri.parse(url),
    );
    return json.decode(response.body);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddPage(),
            ),
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          //widget
          return snapshot.hasData
              ? ItemList(list: snapshot.data)
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  List? list;
  ItemList({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list!.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            //bagian detailPage
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  list: list,
                  index: index,
                ),
              ),
            );
          },
          child: Card(
            child: ListTile(
              title: Text(list![index]['item_name']),
              leading: Icon(
                Icons.widgets,
              ),
              subtitle: Text('Stock :${list![index]['stock']}'),
            ),
          ),
        );
      },
    );
  }
}

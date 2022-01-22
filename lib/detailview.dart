import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  List? list;
  int index;

  DetailPage({
    this.list,
    required this.index,
  });

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.list![widget.index]['item_name']),
      ),
      body: Container(
        child: Card(
          child: Center(
            child: Column(
              children: [
                //multiple widget
                Row(children: [
                  //elevated button edit dan delete
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //remove back button pada appbar
        title: Text('Add Page'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Item Code',
                  labelText: 'Item Code',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Item Name',
                  labelText: 'Item Name',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Price',
                  labelText: 'Price',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Stock',
                  labelText: 'Stock',
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: Text(
                  'Save Data',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  //deklarasi variabel
  TextEditingController itemCode = TextEditingController();
  TextEditingController itemName = TextEditingController();
  TextEditingController itemPrice = TextEditingController();
  TextEditingController Stock = TextEditingController();
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
                controller: itemCode,
                decoration: InputDecoration(
                  hintText: 'Item Code',
                  labelText: 'Item Code',
                ),
              ),
              TextField(
                controller: itemName,
                decoration: InputDecoration(
                  hintText: 'Item Name',
                  labelText: 'Item Name',
                ),
              ),
              TextField(
                controller: itemPrice,
                decoration: InputDecoration(
                  hintText: 'Price',
                  labelText: 'Price',
                ),
              ),
              TextField(
                controller: Stock,
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
